package com.aurospaces.neighbourhood.db.basemodel;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



import java.util.Date;
import java.math.BigDecimal;


/**
 *
 * @author autogenerated
 */



public class BaseCustomerDiscount1 
{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
		 /** Field mapping. **/
@Column(name= "id")
protected int id   = 0;

/** Field mapping. **/
@Column(name= "created_time")
protected Date createdTime ;

/** Field mapping. **/
@Column(name= "updated_time")
protected Date updatedTime ;

/** Field mapping. **/
@Column(name= "old_customer_id")
protected String oldCustomerId ;

/** Field mapping. **/
@Column(name= "customer_id")
protected int customerId ;

/** Field mapping. **/
@Column(name= "register_date")
protected Date registerDate ;

/** Field mapping. **/
@Column(name= "used_date")
protected Date usedDate ;

/** Field mapping. **/
@Column(name= "discount")
protected BigDecimal discount ;

/** Field mapping. **/
@Column(name= "generated_order_id")
protected String generatedOrderId ;

/** Field mapping. **/
@Column(name= "order_id")
protected int orderId ;

/** Field mapping. **/
@Column(name= "mobile_number")
protected String mobileNumber ;

public int getId()
{
  return id;
}
public void setId(final int id)
{
  this.id = id;
}
public Date getCreatedTime()
{
  return createdTime;
}
public void setCreatedTime(final Date createdTime)
{
  this.createdTime = createdTime;
}
public Date getUpdatedTime()
{
  return updatedTime;
}
public void setUpdatedTime(final Date updatedTime)
{
  this.updatedTime = updatedTime;
}
public String getOldCustomerId()
{
  return oldCustomerId;
}
public void setOldCustomerId(final String oldCustomerId)
{
  this.oldCustomerId = oldCustomerId;
}
public int getCustomerId()
{
  return customerId;
}
public void setCustomerId(final int customerId)
{
  this.customerId = customerId;
}
public Date getRegisterDate()
{
  return registerDate;
}
public void setRegisterDate(final Date registerDate)
{
  this.registerDate = registerDate;
}
public Date getUsedDate()
{
  return usedDate;
}
public void setUsedDate(final Date usedDate)
{
  this.usedDate = usedDate;
}
public BigDecimal getDiscount()
{
  return discount;
}
public void setDiscount(final BigDecimal discount)
{
  this.discount = discount;
}
public String getGeneratedOrderId()
{
  return generatedOrderId;
}
public void setGeneratedOrderId(final String generatedOrderId)
{
  this.generatedOrderId = generatedOrderId;
}
public int getOrderId()
{
  return orderId;
}
public void setOrderId(final int orderId)
{
  this.orderId = orderId;
}
public String getMobileNumber()
{
  return mobileNumber;
}
public void setMobileNumber(final String mobileNumber)
{
  this.mobileNumber = mobileNumber;
}

}