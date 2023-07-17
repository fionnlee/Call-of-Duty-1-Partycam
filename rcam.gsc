main( phase, register )
{
	codam\utils::debug( 0, "======== rcam/main:: |", phase, "|", register, "|" );


	switch ( phase )
	{
	  case "init":		_init( register );	 break;
	  case "load":		_load();		break;
	  case "start":	  	_start();		break;
	}
	return;
}

_init( register )
{
	codam\utils::debug( 0, "======== rcam/_init:: |", register, "|" );
	
	[[ register ]]( "roundcam", ::fog,	"thread"  );
	
	return;
}

_load()
{
	codam\utils::debug( 0, "======== rcam/_load" );
	
	return;
}

_start()
{
	codam\utils::debug( 0, "======== rcam/_start" );
	
	return;
}

fog()
{
	for(;;)
	    {   
	        wait .5; 
	        SetExpFog(0.0002, 1, 1, 0.3, 0); // yellow
	        wait .5;
	        SetExpFog(0.0002, 0, 0.8, 0.8, 0); // lughtblue
	        wait .5;
		//add more
		//SetExpFog(distance, red, gree, blue, transition time);
	
	    }
}
