package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Beans.TransactionBean;

public class Functionality {
	
	
	
	
	//creates a transaction record everytime a transaction takes place(transfer,deposit,withdraw)
	public long addTransaction(String from,String to,String action,float amount) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		
		try {
			pst=connection.prepareStatement("insert into transactions values(t_id.nextval,?,?,?,?,?)");
			pst.setString(1, from);
			pst.setString(2,to);
			pst.setString(3, action);
			pst.setFloat(4, amount);
			pst.setDate(5, new Date(System.currentTimeMillis()));
			pst.executeUpdate();
			pst=connection.prepareStatement("select t_id.currval from dual");
			ResultSet set=pst.executeQuery();
			while(set.next()) {
				return set.getLong(1);
			}
			return 0;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
			
		}
	}
	
	
	
	
	
	
	//returns account number of the current user
	public long getAcnum(String userId) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		
		
		try {
			pst=connection.prepareStatement("select account_num from customers where userid=?");
			pst.setString(1, userId);
			ResultSet rs=pst.executeQuery();
		
			while(rs.next())
				return rs.getLong(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return 0;
		
	}
	
	
	
	
	
	
	//method for money transfer
	public String sendMoney(String userId,long acnum,String ifsc,float amount,int pin){
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		PreparedStatement pst2;
		PreparedStatement pst3;
		long senderAcnum=getAcnum(userId);
		int realPin = 0;
		float senderBalance=0;
		float recieverBalance=0;
		String sql="update customers set balance=? where account_num=?";
		
		try {
			pst=connection.prepareStatement("select pin,balance from customers where account_num="+senderAcnum);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()) {
				realPin=rs.getInt(1);
				senderBalance=rs.getFloat(2);
			}
			if(amount>senderBalance) {
				return "Insufficient Balance in your account!";
			}
			if(realPin==pin) {
				pst=connection.prepareStatement("select balance from customers where account_num=? and ifsc=?");
				pst.setLong(1, acnum);
				pst.setString(2, ifsc);
				rs=pst.executeQuery();
				while(rs.next()) {
					recieverBalance=rs.getFloat(1);
					recieverBalance+=amount;
					senderBalance-=amount;
					pst=connection.prepareStatement(sql);
					pst.setFloat(1, senderBalance);
					pst.setLong(2, senderAcnum);
					pst.addBatch();
					pst.setFloat(1, recieverBalance);
					pst.setLong(2, acnum);
					pst.addBatch();
					pst.executeBatch();
				   long tId= addTransaction(Long.toString(senderAcnum),Long.toString(acnum), "Money Transfer", amount);
				    return Long.toString(tId);
					
					
				}
				return "Invalid Credentials";
				
				
				
				
			}
			return "Incorrect PIN";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	
	
	
	
	
	//method stub for Withdrawal
	public String withdraw(String userId,float amount,int pin) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		long acnum=getAcnum(userId);
		
		
		try {
			pst=connection.prepareStatement("select balance from customers where account_num=? and pin=?");
			pst.setLong(1, acnum);
			pst.setInt(2, pin);
			ResultSet rs=pst.executeQuery();
		
			while(rs.next()) {
				float balance=rs.getFloat(1);
				if(amount>balance) {
					return "Insufficient balance";
				}
				balance-=amount;
				pst=connection.prepareStatement("update customers set balance=? where account_num=?");
				pst.setFloat(1, balance);
				pst.setLong(2, acnum);
				pst.executeUpdate();
				addTransaction(Long.toString(acnum), "self", "withdrawal", amount);
				return Float.toString(balance);
			}
				return "Incorrect PIN";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	
	
	
	
	//returns the balance of current user
	public float checkBalance(String userId) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		
		
		try {
			pst=connection.prepareStatement("select balance from customers where userid=?");
			pst.setString(1, userId);
			ResultSet rs=pst.executeQuery();
		
			while(rs.next())
				return rs.getFloat(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return 0;
		
	}
	
	
	
	
	
	
	
	
	
	//method for depositing into account
	public String depsoit(String userId,float amount,int pin) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		long acnum=getAcnum(userId);
		
		
		try {
			pst=connection.prepareStatement("select balance from customers where userid=? and pin=?");
			pst.setString(1, userId);
			pst.setInt(2, pin);
			ResultSet rs=pst.executeQuery();
		
			while(rs.next()) {
				float balance=rs.getFloat(1);
				balance+=amount;
				pst=connection.prepareStatement("update customers set balance=? where account_num=?");
				pst.setFloat(1, balance);
				pst.setLong(2, acnum);
				pst.executeUpdate();
				addTransaction("self", Long.toString(acnum), "Deposit", amount);
				return Float.toString(balance);
				
			}
				return "Incorrect PIN";
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return null;
		
	}
	
	
	
	
	
	//method to change the PIN
	public int changePin(String userId,int oldPin,int newPin) {
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		
		
		
		try {
			pst=connection.prepareStatement("update customers set pin=? where userid=? and pin=?");
			pst.setInt(1, newPin);
			pst.setString(2, userId);
			pst.setInt(3, oldPin);
			
			int rows=pst.executeUpdate();
		     
				return rows;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	
	
	
	
	
	
	
	//returns a list of recent transactions of current user
	public ArrayList<TransactionBean> getTransactions(String userId){
		Connection connection=CreateConnnection.createcon();
		PreparedStatement pst;
		ArrayList<TransactionBean> transList=new ArrayList<TransactionBean>();
		String acnum=Long.toString(getAcnum(userId));
		
		
		try {
			pst=connection.prepareStatement("select * from transactions where (t_from=? or t_to=?) and rownum<=20 order by t_date desc");
			pst.setString(1, acnum);
			pst.setString(2, acnum);
			ResultSet set=pst.executeQuery();
			while(set.next()) {
				TransactionBean bean=new TransactionBean();
				bean.settId(set.getLong(1));
				bean.setFrom(set.getString(2));
				bean.setTo(set.getString(3));
				bean.setAction(set.getString(4));
				bean.setAmount(set.getFloat(5));
				bean.setDate(set.getDate(6));
				transList.add(bean);
			}
			
		     
				return transList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	
	

	
}
