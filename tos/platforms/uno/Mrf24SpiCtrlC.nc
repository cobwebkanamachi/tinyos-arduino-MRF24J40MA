module Mrf24SpiCtrlC
{
  provides interface Mrf24SpiCtrl as SpiCtrl;
  //uses interface HplAtm328pSpi as Spi;
  uses interface GeneralIO as SS;
}
implementation
{
  async command void SpiCtrl.beginPacket()
  {
    call SS.clr();
	//call Spi.enableSs(TRUE);
  }

  async command void SpiCtrl.endPacket()
  {
    call SS.set(); // pull SS/CS high
    //call Spi.enableSs(FALSE);
  }

  //async event void Spi.transferComplete() { }
}
