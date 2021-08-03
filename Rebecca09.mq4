//+------------------------------------------------------------------+
//|                                                    Rebecca07.mq4 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

#include <library09.mqh>
#include <lotcheck.mqh>

double maxriskpercent =0.02;

extern bool EURUSD;
extern bool GBPUSD;
extern bool USDCHF;
extern bool USDJPY;
extern bool USDCAD;
extern bool AUDUSD;
extern bool EURGBP;
extern bool EURAUD;
extern bool EURCHF;
extern bool EURJPY;
extern bool GBPCHF;
extern bool CADJPY;
extern bool GBPJPY;
extern bool AUDNZD;
extern bool AUDCAD;
extern bool AUDCHF;
extern bool AUDJPY;
extern bool CHFJPY;
extern bool EURNZD;
extern bool EURCAD;
extern bool CADCHF;
extern bool NZDJPY;
extern bool NZDUSD;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
     if(EURUSD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(100))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURUSD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURUSD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURUSD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EU)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEU(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURUSD",OP_BUY,lotSize,Ask,10,stopLossBuy3EU,TPBuyEU,NULL,100);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURUSD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EU)
                                    {
                                      double lotSize = accLotCheckSellEU(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURUSD",OP_SELL,lotSize,Bid,10,stopLossSell3EU,TPSellEU,NULL,100);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EU
     if(GBPUSD == true)  
       {
               if(!CheckIfOpenOrderByMagicNB(101))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("GBPUSD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("GBPUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("GBPUSD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("GBPUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("GBPUSD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("GBPUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5GU) //symbol change
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyGU(maxriskpercent);
                                       
                                                 int orderID = OrderSend("GBPUSD",OP_BUY,lotSize,Ask,10,stopLossBuy3GU,TPBuyGU,NULL,101); //variable change & symbol
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("GBPUSD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("GBPUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5GU)
                                    {
                                      double lotSize = accLotCheckSellGU(maxriskpercent);
                                     
                                      int orderID = OrderSend("GBPUSD",OP_SELL,lotSize,Bid,10,stopLossSell3GU,TPSellGU,NULL,101);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }
     if(USDCHF == true)
       {
                if(!CheckIfOpenOrderByMagicNB(102))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("USDCHF",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("USDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("USDCHF",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("USDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("USDCHF",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("USDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5UCHF)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyUCHF(maxriskpercent);
                                       
                                                 int orderID = OrderSend("USDCHF",OP_BUY,lotSize,Ask,10,stopLossBuy3UCHF,TPBuyUCHF,NULL,102);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("USDCHF",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("USDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5UCHF)
                                    {
                                      double lotSize = accLotCheckSellUCHF(maxriskpercent);
                                     
                                      int orderID = OrderSend("USDCHF",OP_SELL,lotSize,Bid,10,stopLossSell3UCHF,TPSellUCHF,NULL,102);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
        if(USDJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(103))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("USDJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("USDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("USDJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("USDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("USDJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("USDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5UJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyUJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("USDJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3UJ,TPBuyUJ,NULL,103);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("USDJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("USDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5UJ)
                                    {
                                      double lotSize = accLotCheckSellUJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("USDJPY",OP_SELL,lotSize,Bid,10,stopLossSell3UJ,TPSellUJ,NULL,103);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of UJ
        if(USDCAD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(104))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("USDCAD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("USDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("USDCAD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("USDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("USDCAD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("USDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5UCAD)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyUCAD(maxriskpercent);
                                       
                                                 int orderID = OrderSend("USDCAD",OP_BUY,lotSize,Ask,10,stopLossBuy3UCAD,TPBuyUCAD,NULL,104);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("USDCAD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("USDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5UCAD)
                                    {
                                      double lotSize = accLotCheckSellUCAD(maxriskpercent);
                                     
                                      int orderID = OrderSend("USDCAD",OP_SELL,lotSize,Bid,10,stopLossSell3UCAD,TPSellUCAD,NULL,104);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of UCAD
       if(AUDUSD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(105))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("AUDUSD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("AUDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("AUDUSD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("AUDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("AUDUSD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("AUDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5AU)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyAU(maxriskpercent);
                                       
                                                 int orderID = OrderSend("AUDUSD",OP_BUY,lotSize,Ask,10,stopLossBuy3AU,TPBuyAU,NULL,105);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("AUDUSD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("AUDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5AU)
                                    {
                                      double lotSize = accLotCheckSellAU(maxriskpercent);
                                     
                                      int orderID = OrderSend("AUDUSD",OP_SELL,lotSize,Bid,10,stopLossSell3AU,TPSellAU,NULL,105);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of AUDUSD
       if(EURGBP == true)
       {
             if(!CheckIfOpenOrderByMagicNB(106))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURGBP",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURGBP",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURGBP",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURGBP",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURGBP",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURGBP",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EG)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEG(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURGBP",OP_BUY,lotSize,Ask,10,stopLossBuy3EG,TPBuyEG,NULL,106);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURGBP",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURGBP",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EG)
                                    {
                                      double lotSize = accLotCheckSellEG(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURGBP",OP_SELL,lotSize,Bid,10,stopLossSell3EG,TPSellEG,NULL,106);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURGBP
        if(EURAUD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(107))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURAUD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURAUD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURAUD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURAUD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURAUD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURAUD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EA)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEA(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURAUD",OP_BUY,lotSize,Ask,10,stopLossBuy3EA,TPBuyEA,NULL,107);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURAUD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURAUD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EA)
                                    {
                                      double lotSize = accLotCheckSellEA(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURAUD",OP_SELL,lotSize,Bid,10,stopLossSell3EA,TPSellEA,NULL,107);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURAUD
          if(EURCHF == true)
       {
             if(!CheckIfOpenOrderByMagicNB(108))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURCHF",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURCHF",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURCHF",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EC)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEC(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURCHF",OP_BUY,lotSize,Ask,10,stopLossBuy3EC,TPBuyEC,NULL,108);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURCHF",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EC)
                                    {
                                      double lotSize = accLotCheckSellEC(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURCHF",OP_SELL,lotSize,Bid,10,stopLossSell3EC,TPSellEC,NULL,108);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURCHF
         if(EURJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(109))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3EJ,TPBuyEJ,NULL,109);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EJ)
                                    {
                                      double lotSize = accLotCheckSellEJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURJPY",OP_SELL,lotSize,Bid,10,stopLossSell3EJ,TPSellEJ,NULL,109);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURJPY
        if(GBPCHF == true)
       {
             if(!CheckIfOpenOrderByMagicNB(110))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("GBPCHF",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("GBPCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("GBPCHF",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("GBPCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("GBPCHF",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("GBPCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5GC)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyGC(maxriskpercent);
                                       
                                                 int orderID = OrderSend("GBPCHF",OP_BUY,lotSize,Ask,10,stopLossBuy3GC,TPBuyGC,NULL,110);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("GBPCHF",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("GBPCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5GC)
                                    {
                                      double lotSize = accLotCheckSellGC(maxriskpercent);
                                     
                                      int orderID = OrderSend("GBPCHF",OP_SELL,lotSize,Bid,10,stopLossSell3GC,TPSellGC,NULL,110);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of GBPCHF
           if(CADJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(111))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("CADJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("CADJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("CADJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("CADJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("CADJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("CADJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5CJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyCJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("CADJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3CJ,TPBuyCJ,NULL,111);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("CADJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("CADJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5CJ)
                                    {
                                      double lotSize = accLotCheckSellCJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("CADJPY",OP_SELL,lotSize,Bid,10,stopLossSell3CJ,TPSellCJ,NULL,111);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of CADJPY
        if(GBPJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(112))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("GBPJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("GBPJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("GBPJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("GBPJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("GBPJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("GBPJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5GJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyGJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("GBPJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3GJ,TPBuyGJ,NULL,112);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("GBPJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("GBPJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5GJ)
                                    {
                                      double lotSize = accLotCheckSellGJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("GBPJPY",OP_SELL,lotSize,Bid,10,stopLossSell3GJ,TPSellGJ,NULL,112);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of GBPJPY
        if(AUDNZD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(113))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("AUDNZD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("AUDNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("AUDNZD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("AUDNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("AUDNZD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("AUDNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5AN)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyAN(maxriskpercent);
                                       
                                                 int orderID = OrderSend("AUDNZD",OP_BUY,lotSize,Ask,10,stopLossBuy3AN,TPBuyAN,NULL,113);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("AUDNZD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("AUDNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5AN)
                                    {
                                      double lotSize = accLotCheckSellAN(maxriskpercent);
                                     
                                      int orderID = OrderSend("AUDNZD",OP_SELL,lotSize,Bid,10,stopLossSell3AN,TPSellAN,NULL,113);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of AUDNZD
        if(AUDCAD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(114))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("AUDCAD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("AUDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("AUDCAD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("AUDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("AUDCAD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("AUDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5AC)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyAC(maxriskpercent);
                                       
                                                 int orderID = OrderSend("AUDCAD",OP_BUY,lotSize,Ask,10,stopLossBuy3AC,TPBuyAC,NULL,114);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("AUDCAD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("AUDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5AC)
                                    {
                                      double lotSize = accLotCheckSellAC(maxriskpercent);
                                     
                                      int orderID = OrderSend("AUDCAD",OP_SELL,lotSize,Bid,10,stopLossSell3AC,TPSellAC,NULL,114);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of AUDCAD
             if(AUDCHF == true)
       {
             if(!CheckIfOpenOrderByMagicNB(115))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("AUDCHF",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("AUDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("AUDCHF",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("AUDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("AUDCHF",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("AUDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5ACHF)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyACHF(maxriskpercent);
                                       
                                                 int orderID = OrderSend("AUDCHF",OP_BUY,lotSize,Ask,10,stopLossBuy3ACHF,TPBuyACHF,NULL,115);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("AUDCHF",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("AUDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5ACHF)
                                    {
                                      double lotSize = accLotCheckSellACHF(maxriskpercent);
                                     
                                      int orderID = OrderSend("AUDCHF",OP_SELL,lotSize,Bid,10,stopLossSell3ACHF,TPSellACHF,NULL,115);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of AUDCHF
           if(AUDJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(116))
               {
                   RefreshRates();
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("AUDJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("AUDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("AUDJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("AUDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("AUDJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("AUDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5AJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyAJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("AUDJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3AJ,TPBuyAJ,NULL,116);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("AUDJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("AUDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5AJ)
                                    {
                                      double lotSize = accLotCheckSellAJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("AUDJPY",OP_SELL,lotSize,Bid,10,stopLossSell3AJ,TPSellAJ,NULL,116);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of AUDJPY
                  if(CHFJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(117))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("CHFJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("CHFJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("CHFJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("CHFJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("CHFJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("CHFJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5CJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyCJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("CHFJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3CJ,TPBuyCJ,NULL,117);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("CHFJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("CHFJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5CJ)
                                    {
                                      double lotSize = accLotCheckSellCJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("CHFJPY",OP_SELL,lotSize,Bid,10,stopLossSell3CJ,TPSellCJ,NULL,117);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of CHFJPY
         if(EURNZD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(118))
               {
                  RefreshRates();
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURNZD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURNZD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURNZD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5EN)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyEN(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURNZD",OP_BUY,lotSize,Ask,10,stopLossBuy3EN,TPBuyEN,NULL,118);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURNZD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5EN)
                                    {
                                      double lotSize = accLotCheckSellEN(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURNZD",OP_SELL,lotSize,Bid,10,stopLossSell3EN,TPSellEN,NULL,118);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURNZD
        if(EURCAD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(119))
               {
                  RefreshRates();
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("EURCAD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("EURCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("EURCAD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("EURCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("EURCAD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("EURCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5ECAD)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyECAD(maxriskpercent);
                                       
                                                 int orderID = OrderSend("EURCAD",OP_BUY,lotSize,Ask,10,stopLossBuy3ECAD,TPBuyECAD,NULL,119);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("EURCAD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("EURCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5ECAD)
                                    {
                                      double lotSize = accLotCheckSellECAD(maxriskpercent);
                                     
                                      int orderID = OrderSend("EURCAD",OP_SELL,lotSize,Bid,10,stopLossSell3ECAD,TPSellECAD,NULL,119);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of EURCAD
         if(CADCHF == true)
       {
             if(!CheckIfOpenOrderByMagicNB(120))
               {
               
                  RefreshRates();
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("CADCHF",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("CADCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("CADCHF",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("CADCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("CADCHF",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("CADCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           
                                           if(Ask <= tapaklowM15_5CC)
                                               { 
                                               
                                             
                                        
                                                 double lotSize = accLotCheckBuyCC(maxriskpercent);
                                       
                                                 int orderID = OrderSend("CADCHF",OP_BUY,lotSize,Ask,10,stopLossBuy3CC,TPBuyCC,NULL,120);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("CADCHF",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("CADCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5CC)
                                    {
                                      double lotSize = accLotCheckSellCC(maxriskpercent);
                                     
                                      int orderID = OrderSend("CADCHF",OP_SELL,lotSize,Bid,10,stopLossSell3CC,TPSellCC,NULL,120);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of CADCHF
         if(NZDJPY == true)
       {
             if(!CheckIfOpenOrderByMagicNB(121))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("NZDJPY",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("NZDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("NZDJPY",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("NZDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("NZDJPY",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("NZDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5NJ)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyNJ(maxriskpercent);
                                       
                                                 int orderID = OrderSend("NZDJPY",OP_BUY,lotSize,Ask,10,stopLossBuy3NJ,TPBuyNJ,NULL,121);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("NZDJPY",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("NZDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5NJ)
                                    {
                                      double lotSize = accLotCheckSellNJ(maxriskpercent);
                                     
                                      int orderID = OrderSend("NZDJPY",OP_SELL,lotSize,Bid,10,stopLossSell3NJ,TPSellNJ,NULL,121);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of NZDJPY
       if(NZDUSD == true)
       {
             if(!CheckIfOpenOrderByMagicNB(122))
               {
                  double momentumBuyCheck[4] = {0};
                  double topBB4ForCheck[4] = {0};
                  double momentumSellCheck4[4] = {0};
                  double lowBB4ForCheck[4] = {0};
       
                  for(int i = 1; i < 4 ; i++) //  - buy order 
                    {
                      momentumBuyCheck[i] = iClose("NZDUSD",PERIOD_H4,i);
                      topBB4ForCheck[i] = iBands("NZDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                      momentumSellCheck4[i] = iClose("NZDUSD",PERIOD_H4,i);
                      lowBB4ForCheck[i] = iBands("NZDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
       
                     if(momentumBuyCheck[i] > topBB4ForCheck[i]) //h4 momentum
                       {
                         RefreshRates();
                         double momentumCheckH1[4] = {0};
                         double topBB1ForCheck[4] = {0};
             
                         for(int i = 1; i < 4 ;i++)
                            {
                                momentumCheckH1[i] = iClose("NZDUSD",PERIOD_H1,i);
                                topBB1ForCheck[i] = iBands("NZDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,i);
                 
                                if(momentumCheckH1[i] > topBB1ForCheck[i]) // if h1 momentum
                                   {
                    
                       
                        
                         
                                
                                           RefreshRates();
                                           if(Ask <= tapaklowM15_5NU)
                                               { 
                                        
                                                 double lotSize = accLotCheckBuyNU(maxriskpercent);
                                       
                                                 int orderID = OrderSend("NZDUSD",OP_BUY,lotSize,Ask,10,stopLossBuy3NU,TPBuyNU,NULL,122);
                                            
                                                 if(orderID < 0)
                                                   {
                                                      Alert("Order Send Error: " + GetLastError());
                        
                                                   }
                                                 else
                                                    {
                                                      if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                    {
                                                        Alert("Long Order " + OrderSymbol() + " Send Successful");
                                                    }
                                                    }
                                                } 
                                       
                                  
                        
                            
                           
                    
                                 }
                 
                            }
          
         
                        }
         
       else if(momentumSellCheck4[i] < lowBB4ForCheck[i]) 
          {
               double momentumSellCheck1[4] = {0};
               double lowBB1ForCheck[4] = {0};
            
            for(int i = 1; i < 4 ; i++) //h1 momentum check
             {
              momentumSellCheck1[i] = iClose("NZDUSD",PERIOD_H1,i);
              lowBB1ForCheck[i] = iBands("NZDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,i);
              
               if(momentumSellCheck1[i] < lowBB1ForCheck[i]) // h1 momentum sell
                {
                 
                   
                            
                               
                                  if(Bid >= tapakHigh15_5NU)
                                    {
                                      double lotSize = accLotCheckSellNU(maxriskpercent);
                                     
                                      int orderID = OrderSend("NZDUSD",OP_SELL,lotSize,Bid,10,stopLossSell3NU,TPSellNU,NULL,122);
                                      
                                      if(orderID < 0)
                                           {
                                              Alert("Order Send Error: " + GetLastError());
                        
                                           }
                                       else
                                           {
                                               if(OrderSelect(orderID,SELECT_BY_TICKET)== true)
                                                  {
                                                        Alert("Short Order " + OrderSymbol() + " Send Successful");
                                                  }
                                           }
                                    }
                               
                               
                        
                        
                }
               
             }
          
          }
      } // end of for buy/sell signal
   }//end for checking type of magic number
       
       }// end of NZDUSD
       
       
    
      
     }
   
 }
//+------------------------------------------------------------------+
