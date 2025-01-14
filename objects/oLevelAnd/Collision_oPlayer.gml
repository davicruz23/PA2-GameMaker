/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

with(oPlayer)
{	
	if (global.hascontrol)
	{
		global.hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
		
	}
	
}
