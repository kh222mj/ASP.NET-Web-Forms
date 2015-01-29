using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Uppgift2.Model
{
    public class Receipt
    {

        private double _subtotal;

        public double DiscountRate
        {
            get;
            private set;
        }

        public double MoneyOff
        {
            get;
            private set;
        }

        public double Subtotal
        {
            get { return _subtotal; }
            private set 
            {
                if (value == 0 || value < 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                _subtotal = value;
            }
        }

        public double Total
        {
            get;
            private set;
        }

        public Receipt(double subtotal)
        {
            Subtotal = subtotal;
            Calculate(_subtotal);
        }

        public void Calculate(double subtotal) 
        {
            if (subtotal < 500) 
            {
                DiscountRate = 0;
            }
            if (subtotal > 499 && subtotal < 1000) 
            {
                DiscountRate = 5;
            }
            if (subtotal > 999 && subtotal < 5000) 
            {
                DiscountRate = 10;
            }
            if (subtotal > 4999) 
            {
                DiscountRate = 15;
            }
            MoneyOff = subtotal / 100 * DiscountRate;

            Total = subtotal - MoneyOff;
        }
    }
}