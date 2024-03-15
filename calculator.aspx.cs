using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calculator : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Page load logic (if needed)
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        string electricity = txtElectricity.Text;
     
            if (IsValidInput())
            {
            double electricityw = Convert.ToDouble(electricity); 
                double energy = Convert.ToDouble(txtEnergy.Text);
                double waste = Convert.ToDouble(txtWaste.Text);
                double mileage = Convert.ToDouble(txtMileage.Text);

                double electricityCarbon = CalculateElectricityCarbon(electricityw);
                double energyCarbon = CalculateEnergyCarbon(energy);
                double wasteCarbon = CalculateWasteCarbon(waste);
                double transportationCarbon = CalculateTransportationCarbon(mileage);

                double totalCarbon = electricityCarbon + energyCarbon + wasteCarbon + transportationCarbon;

                lblResult.Text = $"Your estimated total carbon footprint is {totalCarbon:F2} tons of CO2 per year.";
            }
            else
            {
                lblResult.Text = "Please enter valid input for all fields.";
            }
        }

        private double CalculateElectricityCarbon(double electricity)
        {
            // Simplified calculation for electricity carbon footprint (adjust as needed).
            return electricity * 0.5; // Assuming 0.5 kg of CO2 per kWh
        }

        private double CalculateEnergyCarbon(double energy)
        {
            // Simplified calculation for energy carbon footprint (adjust as needed).
            return energy * 0.2; // Assuming 0.2 kg of CO2 per MJ
        }

        private double CalculateWasteCarbon(double waste)
        {
            // Simplified calculation for waste carbon footprint (adjust as needed).
            return waste * 0.1; // Assuming 0.1 kg of CO2 per kg of waste
        }

        private double CalculateTransportationCarbon(double mileage)
        {
            // Simplified calculation for transportation carbon footprint (adjust as needed).
            return mileage * 0.25; // Assuming 0.25 kg of CO2 per mile
        }

        private bool IsValidInput()
        {
            double electricity, energy, waste, mileage;
            return Double.TryParse(txtElectricity.Text, out electricity) && electricity >= 0
                && Double.TryParse(txtEnergy.Text, out energy) && energy >= 0
                && Double.TryParse(txtWaste.Text, out waste) && waste >= 0
                && Double.TryParse(txtMileage.Text, out mileage) && mileage >= 0;
        }
}
