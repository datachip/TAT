using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TAT
{
    public class clsGlobal
    {
        public static int ApplicantID;

        public static string connstr;
        public static string sqlString;
        public static string errorMessage;

        // Apllications //
        public static int leadID;


        public static int userID;
        public static int userWorkNO;
        public static string userSurName;
        public static int userDptID;
        public static string supervisorName;
        public static string creditRiskName;
        public static string mlcName;
        public static string creditAdminName;
        public static string applicationPath = "http://192.168.1.88/hftat";

        public static string CustomersUploadsPathRaw;
        public static string CustomersUploadsPathResized;
        public static string CustomersUploadsReadPathResized;
        public static string UsersUploadsPathRaw;
        public static string UsersUploadsPathResized;
        public static string ApplicationsUploadsPathResized;
        public static string ApplicationsUploadsPathRaw;

        public static string ucTagPrefix;
        public static string ucTagName;
    }
}