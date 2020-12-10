﻿using System;
using System.Collections.Generic;
using System.Reflection;
using System.Web.Script.Serialization;

namespace InstamojoAPI
{
	public class JavaScriptConverters
	{
		public class NullPropertiesConverter : JavaScriptConverter
		{
			public override object Deserialize(IDictionary<string, object> dictionary, Type type, JavaScriptSerializer serializer)
			{
				throw new NotImplementedException();
			}

			public override IDictionary<string, object> Serialize(object obj, JavaScriptSerializer serializer)
			{
				var jsonExample = new Dictionary<string, object>();
				foreach (var prop in obj.GetType().GetProperties())
				{
					//check if decorated with ScriptIgnore attribute
					bool ignoreProp = prop.IsDefined(typeof(ScriptIgnoreAttribute), true);

					var value = prop.GetValue(obj, BindingFlags.Public, null, null, null);
					if (value != null && !ignoreProp)
						jsonExample.Add(prop.Name, value);
				}

				return jsonExample;
			}

			public override IEnumerable<Type> SupportedTypes
			{
				get { return GetType().Assembly.GetTypes(); }
			}

		}
	}
}
