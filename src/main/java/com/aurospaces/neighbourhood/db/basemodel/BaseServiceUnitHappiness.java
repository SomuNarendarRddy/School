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



public class BaseServiceUnitHappiness 
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
@Column(name= "service_unit_id")
protected int serviceUnitId ;

/** Field mapping. **/
@Column(name= "vendor_id")
protected int vendorId ;

/** Field mapping. **/
@Column(name= "happiness")
protected int happiness ;

/** Field mapping. **/
@Column(name= "time_to_serve")
protected int timeToServe ;

/** Field mapping. **/
@Column(name= "served_number")
protected int servedNumber ;

/** Field mapping. **/
@Column(name= "feedback")
protected String feedback ;

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
public int getServiceUnitId()
{
  return serviceUnitId;
}
public void setServiceUnitId(final int serviceUnitId)
{
  this.serviceUnitId = serviceUnitId;
}
public int getVendorId()
{
  return vendorId;
}
public void setVendorId(final int vendorId)
{
  this.vendorId = vendorId;
}
public int getHappiness()
{
  return happiness;
}
public void setHappiness(final int happiness)
{
  this.happiness = happiness;
}
public int getTimeToServe()
{
  return timeToServe;
}
public void setTimeToServe(final int timeToServe)
{
  this.timeToServe = timeToServe;
}
public int getServedNumber()
{
  return servedNumber;
}
public void setServedNumber(final int servedNumber)
{
  this.servedNumber = servedNumber;
}
public String getFeedback()
{
  return feedback;
}
public void setFeedback(final String feedback)
{
  this.feedback = feedback;
}

}