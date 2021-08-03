//+------------------------------------------------------------------+
//|                                                     lotcheck.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property strict
//+------------------------------------------------------------------+
#include <library09.mqh>


//EURUSD
double accLotCheckSellEU(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EU);
           
         }
   return lotSize;


}

double accLotCheckBuyEU(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EU);
           
         }
   return lotSize;
   
}


//GBPUSD

double accLotCheckSellGU(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3GU);
           
         }
   return lotSize;


}

double accLotCheckBuyGU(double maxriskpercent)  // function lotcheck buy
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3GU);
           
         }
   return lotSize;
   
}

//USDCHF
double accLotCheckSellUCHF(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3UCHF);
           
         }
   return lotSize;


}

double accLotCheckBuyUCHF(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3UCHF);
           
         }
   return lotSize;
   
}

//USDJPY

double accLotCheckSellUJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3UJ);
           
         }
   return lotSize;


}

double accLotCheckBuyUJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3UJ);
           
         }
   return lotSize;
   
}

//USDCAD

double accLotCheckSellUCAD(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3UCAD);
           
         }
   return lotSize;


}

double accLotCheckBuyUCAD(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3UCAD);
           
         }
   return lotSize;
   
}

//AUDUSD

double accLotCheckSellAU(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3AU);
           
         }
   return lotSize;


}

double accLotCheckBuyAU(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3AU);
           
         }
   return lotSize;
   
}

//EURGBP

double accLotCheckSellEG(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EG);
           
         }
   return lotSize;


}

double accLotCheckBuyEG(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EG);
           
         }
   return lotSize;
   
}

//EURAUD

double accLotCheckSellEA(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EA);
           
         }
   return lotSize;


}

double accLotCheckBuyEA(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EA);
           
         }
   return lotSize;
   
}

//EURCHF

double accLotCheckSellEC(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EC);
           
         }
   return lotSize;


}

double accLotCheckBuyEC(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EC);
           
         }
   return lotSize;
   
}

//EURJPY

double accLotCheckSellEJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EJ);
           
         }
   return lotSize;


}

double accLotCheckBuyEJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EJ);
           
         }
   return lotSize;
   
}

//GBPCHF

double accLotCheckSellGC(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3GC);
           
         }
   return lotSize;


}

double accLotCheckBuyGC(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3GC);
           
         }
   return lotSize;
   
}

//CADJPY

double accLotCheckSellCJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3CJ);
           
         }
   return lotSize;


}

double accLotCheckBuyCJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3CJ);
           
         }
   return lotSize;
   
}

//GBPJPY

double accLotCheckSellGJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3GJ);
           
         }
   return lotSize;


}

double accLotCheckBuyGJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3GJ);
           
         }
   return lotSize;
   
}

//AUDNZD

double accLotCheckSellAN(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3AN);
           
         }
   return lotSize;


}

double accLotCheckBuyAN(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3AN);
           
         }
   return lotSize;
   
}

//AUDCAD

double accLotCheckSellAC(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3AC);
           
         }
   return lotSize;


}

double accLotCheckBuyAC(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3AC);
           
         }
   return lotSize;
   
}

//AUDCHF

double accLotCheckSellACHF(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3ACHF);
           
         }
   return lotSize;


}

double accLotCheckBuyACHF(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3ACHF);
           
         }
   return lotSize;
   
}

//AUDJPY

double accLotCheckSellAJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3AJ);
           
         }
   return lotSize;


}

double accLotCheckBuyAJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3AJ);
           
         }
   return lotSize;
   
}

//CHFJPY

double accLotCheckSellCHJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3CHJ);
           
         }
   return lotSize;


}

double accLotCheckBuyCHJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3CHJ);
           
         }
   return lotSize;
   
}

//EURNZD

double accLotCheckSellEN(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3EN);
           
         }
   return lotSize;


}

double accLotCheckBuyEN(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3EN);
           
         }
   return lotSize;
   
}

//EURCAD

double accLotCheckSellECAD(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3ECAD);
           
         }
   return lotSize;


}

double accLotCheckBuyECAD(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3ECAD);
           
         }
   return lotSize;
   
}

//CADCHF

double accLotCheckSellCC(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3CC);
           
         }
   return lotSize;


}

double accLotCheckBuyCC(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3CC);
           
         }
   return lotSize;
   
}

//NZDJPY

double accLotCheckSellNJ(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3NJ);
           
         }
   return lotSize;


}

double accLotCheckBuyNJ(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3NJ);
           
         }
   return lotSize;
   
}

//NZDUSD

double accLotCheckSellNU(double maxriskpercent)  // function lotcheck sell
{
  double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Bid,stopLossSell3NU);
           
         }
   return lotSize;


}

double accLotCheckBuyNU(double maxriskpercent)  // function lotcheck sell
{
   double accBalance = AccountBalance();
   double lotSize;
        if(accBalance < 300)
         {
           lotSize = 0.01;
           
         
         } 
         else 
         {
            lotSize = OptimalLotSize(maxriskpercent,Ask,stopLossBuy3NU);
           
         }
   return lotSize;
   
}