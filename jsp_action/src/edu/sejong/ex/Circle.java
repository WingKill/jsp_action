package edu.sejong.ex;

public class Circle {
	private double radius;
	private double area;
	
	public Circle(){
		
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
		area = Math.pow(radius, 2)*Math.PI;
	}

	public double getArea() {
		return Math.round(area*1000)/1000.0;
	}

	public void setArea(double area) {
		this.area = area;
	}	
}
