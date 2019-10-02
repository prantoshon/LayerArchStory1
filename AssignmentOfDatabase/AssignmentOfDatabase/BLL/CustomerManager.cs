using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AssignmentOfDatabase.Repository;

namespace AssignmentOfDatabase.BLL
{
    public class CustomerManager
    {
        CustomerRepository _customerRepository = new CustomerRepository();

        public bool AddCustomer(string name, string address, string number) 
        {
            return _customerRepository.AddCustomer(name,address,number);
        }
        public bool NameExist(string name) 
        {
            return _customerRepository.NameExist(name);
        }
        public DataTable ShowAllInformation() 
        {
            return _customerRepository.ShowAllInformation();
        }

        public bool DeleteData(string id) 
        {
            return _customerRepository.DeleteData(id);
        }

        public bool UpdateInformation(string name, string address, string number, string id) 
        {
            return _customerRepository.UpdateInformation(name, address, number, id);
        }
        public DataTable SeachInformation(string name) 
        {
            return _customerRepository.SeachInformation(name);
        }
    }
}
