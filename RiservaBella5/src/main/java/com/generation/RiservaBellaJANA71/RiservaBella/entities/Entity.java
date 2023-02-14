package com.generation.RiservaBellaJANA71.RiservaBella.entities;

import java.lang.reflect.Method;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

public abstract class Entity
{
	private int id;
	
	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}
	public Map<String, String> toMap()
	{
		Map<String, String> ris = new HashMap<String, String>();
		
		
		for(Method m : this.getClass().getMethods())
		{
			if(	m.getName().startsWith("get")	&&
				!m.getName().equalsIgnoreCase("getClass"))
			{
				try
				{
					String key = m.getName().substring(3).toLowerCase();
					String value = m.invoke(this) + "";
					ris.put(key, value);
				}
				catch(Exception e)
				{
					System.out.println("Eccezione del metodo toMap() in Entity");
					e.printStackTrace();
				}
			}//Fine di if
			else if(m.getName().startsWith("is"))
			{
				try
				{
					String key = m.getName().substring(2).toLowerCase();
					String value = m.invoke(this) + "";
					ris.put(key, value);
				}
				catch(Exception e)
				{
					System.out.println("Eccezione del metodo toMap() in Entity");
					e.printStackTrace();
				}
			}//Fine di elseIf
		}//Fine di for
		
		return ris;
	}//Fine del metodo toMap()
	
	public Entity fromMap(Map<String, String> map)
	{
		for(Method m : this.getClass().getMethods())
		{
			if(m.getName().startsWith("set") && m.getParameterCount() == 1)
			{
				String nomeProprieta = m.getName().substring(3).toLowerCase();
				
				if(map != null && map.containsKey(nomeProprieta))
				{
					String valore = map.get(nomeProprieta);
					try
					{
						String tipo = m.getParameters()[0].getType().getSimpleName().toLowerCase();
						switch(tipo)
						{
							case "string"	:
								m.invoke(this, valore);
							break;
							
							case "int"	:
								m.invoke(this, Integer.parseInt(valore));
							break;
							
							case "double"	:
								m.invoke(this, Double.parseDouble(valore));
							break;
							
							case "float":
								m.invoke(this, Float.parseFloat(valore));
							break;
							
							case "long":
								m.invoke(this, Long.parseLong(valore));
							
							case "date"	:
								m.invoke(this, Date.valueOf(valore));
							break;
							
							case "boolean"	:
								m.invoke(this,	valore.equals("1")				||
												valore.equalsIgnoreCase("true")	||
												valore.equalsIgnoreCase("t")	||
												valore.equalsIgnoreCase("vero")	||
												valore.equalsIgnoreCase("v")	||
												valore.equalsIgnoreCase("si")	||
												valore.equalsIgnoreCase("s")	||
												valore.equalsIgnoreCase("sì")	||
												valore.equalsIgnoreCase("y"))	;
							break;
							
							default	:
								System.err.println("Nel fromMap() non ho riconosciuto il tipo " + tipo);
							break;
						
						}//Fine di switch
					}
					catch(Exception e)
					{
						System.out.println("Catch del metodo fromMap() di Entity");
						e.printStackTrace();
					}
					
				}//Fine di if
				
			}//Fine di if
			
		}//Fine di for
		
		return this;
		
	}//Fine del metodo fromMap()
	
	public String toString()
	{
		String ris = "Id: " + id + "\n";
		
		Map<String, String> mappa = toMap();
		
		for(String key : mappa.keySet())
			if(!key.equals("id"))
				ris += key + " : " + mappa.get(key) + "\n";
		
		ris += "------------------------\n";
		return ris;
	}//Fine di toString()
}