//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineAssessmentSet
{
    using System;
    using System.Collections.Generic;
    
    public partial class AssessmentSet_Detail
    {
        public int studId { get; set; }
        public Nullable<int> lecId { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public Nullable<System.TimeSpan> startTime { get; set; }
        public Nullable<System.TimeSpan> endTime { get; set; }
        public string accessStatus { get; set; }
        public Nullable<int> assessId { get; set; }
    
        public virtual Lecturer Lecturer { get; set; }
        public virtual Student Student { get; set; }
        public virtual AssessmentSet AssessmentSet { get; set; }
    }
}