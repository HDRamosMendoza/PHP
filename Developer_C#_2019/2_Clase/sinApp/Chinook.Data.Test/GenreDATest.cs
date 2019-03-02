﻿using System;
/* Linq es para usralo con el count. EDnumerable. */
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Chinook.Data;
using Chinook.Entities;

namespace Chinook.Data.Test
{
    [TestClass]
    public class GenreDATest
    {
        [TestMethod]
        public void GetCount()
        {
            var da = new GenreDA();
            var cantidad = da.GetCount();
            Assert.IsTrue(cantidad > 0);
        }
    }
}