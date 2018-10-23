//your code here
Particle[] bob;

void setup()
{
	size(600,600);
	bob = new Particle[75];
	for(int i = 0; i < bob.length; i++){
		bob[i] = new NormalParticle();
	} 
	bob[0] = new OddballParticle();
	bob[1] = new JumboParticle();

	frameRate(100);

}
void draw()
{
	//your code here
	background(57,224,255);

	fill(234,162,52);
	ellipse(270,300,50,50);
	ellipse(290,320,50,50);
	ellipse(310,300,50,50);
	ellipse(290,280,50,50);
	fill(0);
	ellipse(290,300,30,30);

	for(int i = 0; i < bob.length; i++){
		bob[i].show();
		bob[i].walk();
	}


}

class NormalParticle implements Particle
{
	//your code here
	int rectX, rectY, rectSize;
	double myX, myY, myAngle, mySpeed, mySize;
	NormalParticle()
	{
		myX = 300.0;
		myY = 300.0;
		myAngle = Math.PI*2*Math.random();
		mySpeed = (Math.random()*5 );

	}
	public void walk()
	{
		myX = myX + Math.cos(myAngle)*mySpeed; 
		myY = myY + Math.sin(myAngle)*mySpeed;

		if(myX > 600)
		{
			myX = 300;
			myY = 300;
			myAngle = Math.PI*2*Math.random();
			mySpeed = (Math.random()*5 );
		}
		if(myX < 0)
		{
			myX = 300;
			myY = 300;
			myAngle = Math.PI*2*Math.random();
			mySpeed = (Math.random()*5 );
		}
		if(myY > 600)
		{
			myX = 300;
			myY = 300;
			myAngle = Math.PI*2*Math.random();
			mySpeed = (Math.random()*5 );
		}
		if(myY > 600)
		{
			myX = 300;
			myY = 300;
			myAngle = Math.PI*2*Math.random();
			mySpeed = (Math.random()*5 );
		}

	}

	public void show()
	{
		fill(255);
		ellipse((float)myX + 2, (float)myY - 10, 15, 12);

		fill(230,234,24);
		ellipse((float)myX, (float)myY, 23, 20);
		fill(0);
		ellipse((float)myX - 6, (float)myY +1, 4,4);
		fill(0);
		rect((float)myX, (float)myY - 10, 4,20);
		
		fill(255);
		ellipse((float)myX + 5, (float)myY - 10, 15, 12);

	}	
}


interface Particle
{
	//your code here
	public void show();
	public void walk();
}

class OddballParticle extends NormalParticle//uses an interface
{
	//your code here
	public void walk()
	{
		myX = myX + (int)(Math.random()*5)-3;
		myY = myY + (int)(Math.random()*5)-3;

		if(myX > 600)
		{
			myX = 300;
			myY = 300;
		}
		if(myX < 0)
		{
			myX = 300;
			myY = 300;
		}
		if(myY > 600)
		{
			myX = 300;
			myY = 300;
		}
		if(myY > 600)
		{
			myX = 300;
			myY = 300;
		}
	}

	public void show()
	{
		fill(255);
		ellipse((float)myX + 2, (float)myY - 10, 15, 12);

		fill(121,26,232);
		ellipse((float)myX, (float)myY, 23, 20);
		fill(0);
		ellipse((float)myX - 6, (float)myY +1, 4,4);
		fill(0);
		rect((float)myX, (float)myY - 10, 4,20);
		
		fill(255);
		ellipse((float)myX + 5, (float)myY - 10, 15, 12);

	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void show()
	{
		fill(255);
		ellipse((float)myX, (float)myY - 15, 30, 20);

		fill(255,0,21);
		ellipse((float)myX, (float)myY, 38, 30);
		fill(0);
		ellipse((float)myX - 10, (float)myY + 3, 8,8);
		fill(0);
		rect((float)myX -1 , (float)myY - 10, 8,25);
		
		fill(255);
		ellipse((float)myX + 10, (float)myY - 15, 30, 20);
	}
}

