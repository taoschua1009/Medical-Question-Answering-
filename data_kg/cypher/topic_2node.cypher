
// ===== Article 24 | Chunk 1 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"nôn", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"thường cải thiện khi thai được 12–14 tuần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"nghén nặng có thể ảnh hưởng 1–3% sản phụ", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 2 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"buồn nôn và nôn có thể ảnh hưởng đến tinh thần", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"buồn nôn và nôn có thể ảnh hưởng đến công việc", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"buồn nôn và nôn có thể ảnh hưởng đến sinh hoạt gia đình", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"buồn nôn và nôn có thể ảnh hưởng đến khả năng chăm sóc người thân", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (a1:Advice {name:"gia đình, bạn bè và bác sĩ có thể hỗ trợ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 24 | Chunk 3 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đa số thai phụ có thể điều trị tại nhà hoặc ngoại trú, nhưng một số cần nhập viện", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"nhiều thuốc chống nôn an toàn, chủ yếu để cải thiện triệu chứng", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 24 | Chunk 4 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"triệu chứng thường xuất hiện từ tuần 4–7 thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"cải thiện sau 12–14 tuần, nhưng có thể kéo dài lâu hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"thường gọi là 'nghén buổi sáng' nhưng có thể xảy ra bất cứ lúc nào", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 5 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi hormone thai kỳ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (rf1:RiskFactor {name:"tiền sử nghén", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"đa thai", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"thai trứng", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

// ===== Article 24 | Chunk 6 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cần phân biệt với nguyên nhân nôn khác như viêm dạ dày, viêm thận, ruột thừa, đặc biệt nếu xuất hiện sau 10 tuần thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 7 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"gây mất nước", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"sụt cân", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"tiểu vàng sậm", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"khô khát", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"suy kiệt", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"có thể kéo dài tới tuần 20 hoặc lâu hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần nhập viện nếu triệu chứng nghiêm trọng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 8 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"ảnh hưởng tinh thần", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"ảnh hưởng công việc", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"ảnh hưởng đời sống hàng ngày", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"có thể dẫn đến trầm cảm", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (a1:Advice {name:"cần hỗ trợ tâm lý khi cảm thấy buồn thường xuyên", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 24 | Chunk 9 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"nôn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"nguy cơ sẩy thai thấp hơn bình thường một chút", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 10 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"nghén nặng có thể làm tăng nguy cơ sinh con nhẹ cân", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (app1:Application {name:"cần siêu âm theo dõi sự phát triển thai", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

// ===== Article 24 | Chunk 11 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn nhiều bữa nhỏ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chọn thực phẩm dễ tiêu hóa", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh thức ăn gây mùi", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"có thể dùng gừng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"bấm huyệt hoặc châm cứu", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 24 | Chunk 12 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu triệu chứng không cải thiện hoặc cản trở sinh hoạt → cần khám bác sĩ để được kê thuốc chống nôn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 13 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"mất nước", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"có ceton trong nước tiểu", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"nôn nhiều không đáp ứng", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"xét nghiệm máu bất thường", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"sụt cân", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

MERGE (c6:Cause {name:"có bệnh nền tim thận hoặc đái tháo đường", layer:"Cause"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c6)

MERGE (a1:Advice {name:"trường hợp phải nhập viện", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 24 | Chunk 14 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"được kê thuốc chống nôn", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (a1:Advice {name:"nếu triệu chứng nặng cần duy trì uống từng ngụm nước và thuốc", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"liên hệ bác sĩ để được cấp thêm thuốc", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 24 | Chunk 15 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"triệu chứng có thể tái phát gây mất nước", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (adv1:Advice {name:"cần liên hệ bác sĩ hoặc nữ hộ sinh để được đánh giá lại", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(adv1)
MERGE (adv1)-[:CONTEXT]->(tk)

// ===== Article 24 | Chunk 16 | Nghén khi thai kỳ =====
MERGE (s:Topic {name:"Nghén", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nghén thường tự cải thiện hoặc hết sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"dù có thể gây khó khăn trong thai kỳ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 1 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hầu hết mọi người biết hút thuốc gây ung thư và nhiều vấn đề sức khỏe", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"khi mang thai, hút thuốc có thể gây sinh non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"khi mang thai, hút thuốc có thể gây dị tật bẩm sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"khi mang thai, hút thuốc có thể gây hội chứng đột tử ở trẻ sơ sinh (SIDS)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 2 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tốt nhất nên bỏ thuốc trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bỏ ở bất kỳ giai đoạn nào vẫn có lợi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (c1:Cause {name:"tiếp xúc khói thuốc thụ động cũng gây hại cho mẹ và thai", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

// ===== Article 25 | Chunk 3 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"một thai kỳ khỏe mạnh trước đó không đảm bảo an toàn cho lần mang thai sau nếu tiếp tục hút thuốc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 4 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"phụ nữ khó thụ thai hơn", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nam giới bị tổn thương tinh trùng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"nam giới bị rối loạn cương dương", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 25 | Chunk 5 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"làm chậm phát triển", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"nhẹ cân", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"sinh non", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"tổn thương phổi và não kéo dài", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

// ===== Article 25 | Chunk 6 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"tăng gấp đôi nguy cơ chảy máu bất thường trong thai kỳ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"tăng gấp đôi nguy cơ chảy máu bất thường trong sinh nở", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"đe dọa cả mẹ và con", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 7 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"làm tăng nguy cơ dị tật bẩm sinh như sứt môi", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"làm tăng nguy cơ dị tật bẩm sinh như hở hàm ếch", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"khiến trẻ khó ăn", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"có thể cần phẫu thuật", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

// ===== Article 25 | Chunk 8 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (comp1:Complication {name:"trẻ sơ sinh tiếp xúc khói thuốc có nguy cơ SIDS cao hơn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 9 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"tăng nguy cơ sinh non (trước 37 tuần)", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ sinh non thường chưa đủ trưởng thành, dễ gặp biến chứng hoặc tử vong", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

// ===== Article 25 | Chunk 10 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ sinh non dễ gặp cân nặng thấp", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ sinh non dễ gặp khó bú", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"trẻ sinh non dễ gặp vấn đề hô hấp sớm và kéo dài", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"trẻ sinh non dễ gặp bại não", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"trẻ sinh non dễ gặp chậm phát triển", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"trẻ sinh non dễ gặp rối loạn thính giác hoặc thị giác", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

// ===== Article 25 | Chunk 11 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"trẻ sinh non có thể phải nằm viện nhiều ngày hoặc nhiều tháng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 25 | Chunk 12 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"em bé nhận nhiều oxy hơn chỉ sau 1 ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"phát triển tốt hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (comp1:Complication {name:"giảm nguy cơ sinh non", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 25 | Chunk 13 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"mẹ sẽ có nhiều năng lượng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thở dễ dàng hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"giảm nguy cơ bệnh tim", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"giảm nguy cơ đột quỵ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"giảm nguy cơ ung thư phổi", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"giảm nguy cơ bệnh phổi mạn tính", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 25 | Chunk 14 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"nói chuyện với bác sĩ để chọn phương pháp bỏ thuốc an toàn khi mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 28 | Chunk 1 | Chảy máu âm đạo khi thai kỳ =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chảy máu âm đạo khi mang thai có thể xảy ra ở đầu hoặc cuối thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"thường gặp hơn ở ba tháng đầu và không phải lúc nào cũng nghiêm trọng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"chảy máu cuối thai kỳ thường nguy hiểm hơn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần đi khám ngay", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 28 | Chunk 2 | Chảy máu âm đạo khi thai kỳ =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (p1:Population {name:"chảy máu âm đạo đầu thai kỳ gặp ở 15–25% thai phụ", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (c1:Cause {name:"máu báo thai khi trứng làm tổ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"cổ tử cung dễ chảy máu sau quan hệ", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"Pap test", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"khám vùng chậu", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

// ===== Article 28 | Chunk 5 | Chảy máu âm đạo khi thai kỳ =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"viêm cổ tử cung", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"lộ tuyến cổ tử cung", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"bất thường bánh nhau", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"dấu hiệu chuyển dạ sinh non", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (a1:Advice {name:"bất kể lượng ít hay nhiều, đều cần được kiểm tra", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 31 | Chunk 1 | Công việc và thai kỳ =====
MERGE (s:Topic {name:"Công việc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"hiệp hội sản phụ khoa hoàng gia anh cung cấp thông tin hướng dẫn đối với các công việc trong thời kỳ mang thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

// ===== Article 31 | Chunk 2 | Công việc và thai kỳ =====
MERGE (s:Topic {name:"Công việc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hướng dẫn quốc gia Anh: nguy cơ sinh non và thai nhẹ cân thấp ở phụ nữ làm >40h/tuần. không có bằng chứng phải giảm dưới 40h", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"làm việc theo ca, kể cả ban đêm, không làm tăng nguy cơ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 31 | Chunk 3 | Công việc và thai kỳ =====
MERGE (s:Topic {name:"Công việc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên trao đổi với giám sát, điều chỉnh công việc, đánh giá thường xuyên", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"có thể nhờ hỗ trợ từ đồng nghiệp nữ và diễn đàn y khoa", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"công việc ca trực gây căng thẳng khi mang thai", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 31 | Chunk 4 | Công việc và thai kỳ =====
MERGE (s:Topic {name:"Công việc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thực tập sinh thường nghỉ ca đêm vào cuối thai kỳ trước khi nghỉ thai sản", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể điều chỉnh trực đêm sang ban ngày", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 31 | Chunk 5 | Công việc và thai kỳ =====
MERGE (s:Topic {name:"Công việc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tìm hiểu thêm: quyền lợi và trách nhiệm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cân nhắc đặc biệt (hỗ trợ sinh sản, nhận con nuôi, sinh non, sẩy thai, thai chết lưu)", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nghỉ thai sản và lương", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"hướng dẫn trở lại làm việc sau sinh", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 34 | Chunk 1 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hầu như những người thấy khó chịu trong ba tháng đầu của thai kỳ thường bắt đầu cảm thấy tốt hơn khi bước qua ba tháng giữa", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (sym1:Symptom {name:"giảm bớt triệu chứng buồn nôn", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"giảm bớt triệu chứng nôn", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (det2:Detail {name:"ít thay đổi xúc cảm hơn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"cảm thấy khỏe hơn", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (a1:Advice {name:"đây là một thời điểm tốt để thực hiện những việc chuẩn bị cần thiết để sẵn sàng chào đón em bé của bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det4:Detail {name:"cân nặng sẽ tăng nhanh hơn trong giai đoạn này, mỗi tháng tăng khoảng 1,5 - 2 kg cho đến cuối thai kỳ", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (a2:Advice {name:"bạn có thể bắt đầu mặc đồ dành cho bà bầu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 34 | Chunk 2 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"bạn sẽ bắt đầu cảm nhận sự động đậy của bé trong bụng vào khoảng giữa 3 tháng giữa mang thai (tức khoảng tháng thứ 5 - 6)", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"thực ra thì em bé của bạn đã có những cử động trước đó rồi, nhưng có thể là bạn không để ý tới nó lắm", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"nếu đã từng mang thai, bạn có thể nhận thấy các cử động này sớm hơn bởi vì bạn đã quen thuộc với cảm giác thai máy này", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 34 | Chunk 3 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ngực của bạn có thể không còn mềm như thời 3 tháng đầu mang thai, nhưng chúng vẫn sẽ tiếp tục phát triển và chuẩn bị cho việc cho con bú", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"các tuyến sữa dãn rộng thêm và tích tụ mỡ làm vú to hơn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"da quanh núm vú có thể sậm màu hơn, xuất hiện nhiều hạt nhỏ tiết dầu giúp giữ ẩm, và đôi khi có thể tiết sữa non màu vàng nhạt", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 34 | Chunk 4 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi làn da căng ra để phù hợp với sự phát triển, sợi đàn hồi dưới da có thể bị đứt, tạo thành vết rạn", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (sym1:Symptom {name:"vết rạn da thường xuất hiện trên bụng", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"vết rạn da thường xuất hiện trên ngực", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (a1:Advice {name:"không có cách nào phòng ngừa hoàn toàn, nhưng kiểm soát tăng cân và giữ ẩm da có thể giảm ngứa", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det2:Detail {name:"vết rạn sẽ mờ dần sau sinh", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 34 | Chunk 5 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"da khô", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"ngứa", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"nhạy cảm ánh nắng", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"xuất hiện đường nâu giữa bụng (linea nigra)", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"nám da trên mặt", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"đỏ ngứa lòng bàn tay", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"các thay đổi này có thể mờ dần sau sinh", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 34 | Chunk 6 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu trong 3 tháng đầu thai kỳ bạn giảm ham muốn vì ốm nghén, thay đổi cảm xúc, thì ở 3 tháng giữa thai kỳ nhu cầu tình dục có thể quay lại", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"quan hệ tình dục vẫn an toàn, trừ khi bác sĩ khuyên tránh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 34 | Chunk 7 | Ba tháng giữa thai kỳ =====
MERGE (s:Topic {name:"Ba tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đau chân", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"chuột rút do thai lớn đè lên mạch máu", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (c1:Complication {name:"nguy cơ thuyên tắc tĩnh mạch sâu (DVT)", layer:"Complication"})
MERGE (c1)-[:HAS_COMPLICATION]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"phù ở tay, chân, mặt", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"đau lưng", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"đau hông do dây chằng giãn", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"đau bụng do tử cung lớn", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"răng lung lay do thay đổi nội tiết", layer:"Symptom"})
MERGE (s7)-[:HAS_SYMPTOM]->(s)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nên chăm sóc nha khoa", layer:"Advice"})
MERGE (a1)-[:HAS_ADVICE]->(s)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"nghẹt mũi", layer:"Symptom"})
MERGE (s8)-[:HAS_SYMPTOM]->(s)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (s9:Symptom {name:"chảy máu cam", layer:"Symptom"})
MERGE (s9)-[:HAS_SYMPTOM]->(s)
MERGE (s9)-[:CONTEXT]->(tk)

MERGE (s10:Symptom {name:"ợ nóng", layer:"Symptom"})
MERGE (s10)-[:HAS_SYMPTOM]->(s)
MERGE (s10)-[:CONTEXT]->(tk)

MERGE (s11:Symptom {name:"nhiễm trùng tiểu", layer:"Symptom"})
MERGE (s11)-[:HAS_SYMPTOM]->(s)
MERGE (s11)-[:CONTEXT]->(tk)

MERGE (s12:Symptom {name:"các cơn co Braxton Hicks – thường không đều và biến mất sau vài phút", layer:"Symptom"})
MERGE (s12)-[:HAS_SYMPTOM]->(s)
MERGE (s12)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 1 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"dấu hiệu đầu tiên của có thai là gì", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"trễ kinh", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"đau bụng nhẹ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"chảy máu một chút", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"dùng que thử thai tại nhà", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"các kết quả này rất chính xác nếu bạn thực hiện một vài ngày sau ngày ước tính có kinh như thường lệ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"bác sĩ có thể xác nhận việc bạn đang có thai hay không", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"bác sĩ có thể tư vấn về việc chăm sóc khi mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 2 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"cảm thấy mệt mỏi", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (adv1:Advice {name:"nên ngủ lâu hơn vào ban đêm và tranh thủ thêm giấc ngủ ngắn trong ngày", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(adv1)
MERGE (adv1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"bạn sẽ cảm thấy khỏe hơn khi bước qua 3 tháng giữa", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 3 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"nôn", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"do hormone thai kỳ gây ra", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"có thể xảy ra bất kỳ lúc nào trong ngày", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"một số thức ăn hoặc mùi hương có thể làm tăng buồn nôn", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"triệu chứng thường xuất hiện vài ngày sau khi trễ kinh", layer:"Detail"})
MERGE (det2)-[:HAS_DETAIL]->(s)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"triệu chứng thường biến mất vào 3 tháng cuối thai kỳ", layer:"Detail"})
MERGE (det3)-[:HAS_DETAIL]->(s)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 4 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đi tiểu nhiều hơn", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"són tiểu khi ho hoặc hắt hơi", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"cuối tháng thứ 3, tử cung phát triển to hơn, đè lên bàng quang", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 5 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"bụng to lên: vòng eo bắt đầu mở rộng do thai và tử cung phát triển", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"tùy vóc dáng mà sự thay đổi có thể rõ ở tam cá nguyệt thứ hai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 6 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tính khí thất thường", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"hay quên", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (sym3:Symptom {name:"khó tập trung", layer:"Symptom"})
MERGE (sym3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym3)

MERGE (cau1:Cause {name:"do mệt mỏi", layer:"Cause"})
MERGE (cau1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(cau1)

MERGE (cau2:Cause {name:"do hormone", layer:"Cause"})
MERGE (cau2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(cau2)

MERGE (cau3:Cause {name:"do cảm xúc đi cùng việc mang thai", layer:"Cause"})
MERGE (cau3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(cau3)

// ===== Article 35 | Chunk 7 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"chóng mặt", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"choáng váng", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (c1:Cause {name:"cơ thể sản xuất thêm máu cho thai nhi", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"đói", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"mệt mỏi", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"căng thẳng", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (comp1:Complication {name:"chóng mặt kèm chảy máu âm đạo hoặc đau bụng", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (a1:Advice {name:"cần đi khám ngay nếu chóng mặt kèm chảy máu âm đạo hoặc đau bụng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 35 | Chunk 8 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (s1:Symptom {name:"ợ nóng", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (det1:Detail {name:"nội tiết tố làm tiêu hóa chậm lại, thức ăn lưu lại lâu hơn trong dạ dày, gây ợ nóng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 9 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"có thể khắc phục bằng ăn nhiều chất xơ hoặc dùng thuốc làm mềm phân theo hướng dẫn bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"do tiêu hóa chậm", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"do viên đa sinh tố chứa sắt", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (s1:Symptom {name:"táo bón", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

// ===== Article 35 | Chunk 10 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"các mạch máu lớn hơn, nổi rõ vùng bụng", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"các mạch máu lớn hơn, nổi rõ vùng ngực", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (sym3:Symptom {name:"các mạch máu lớn hơn, nổi rõ vùng chân", layer:"Symptom"})
MERGE (sym3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym3)

MERGE (sym4:Symptom {name:"xuất hiện mạch máu hình mạng nhện ở cổ", layer:"Symptom"})
MERGE (sym4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym4)

MERGE (sym5:Symptom {name:"xuất hiện mạch máu hình mạng nhện ở mặt", layer:"Symptom"})
MERGE (sym5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym5)

MERGE (sym6:Symptom {name:"xuất hiện mạch máu hình mạng nhện ở cánh tay", layer:"Symptom"})
MERGE (sym6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym6)

// ===== Article 35 | Chunk 11 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thay đổi ở da: tăng lưu thông máu làm da hồng hào, bóng bẩy", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"hormone làm tiết thêm dầu, có thể nổi mụn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 35 | Chunk 12 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"ngực căng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"ngực phồng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"ngực nặng hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (sym4:Symptom {name:"xuất hiện hạt nhỏ quanh núm vú", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym4)
MERGE (sym4)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"ngực tiếp tục thay đổi để chuẩn bị cho việc cho con bú", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 35 | Chunk 13 | Ba tháng đầu thai kỳ =====
MERGE (s:Topic {name:"Ba tháng đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"niêm mạc âm đạo dày lên, ít nhạy cảm hơn", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (sym1:Symptom {name:"có khí hư trắng", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"ra ít huyết âm đạo", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (a1:Advice {name:"nếu chảy máu nhiều hoặc kèm đau bụng, cần đi cấp cứu ngay", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 36 | Chunk 1 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ba tháng cuối mang thai được gọi là “giai đoạn căng” của thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"cơ thể mình vụng về và nặng nề hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"cảm thấy mệt mỏi", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần những giấc ngủ ngắn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"chuẩn bị cho chuyển dạ, sanh con và làm cha mẹ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"bạn sẽ thích thú với cảm giác cử động của bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"“bản năng làm tổ” có thể tác động tới bạn, khiến bạn thôi thúc dọn dẹp và chuẩn bị nhà cửa đón bé", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

// ===== Article 36 | Chunk 2 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nằm nghiêng bên trái là tốt nhất vì giúp máu lưu thông", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nằm ngửa gây chậm hồi lưu máu, cần tránh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"có thể đặt gối giữa hai đầu gối hoặc sau lưng để dễ chịu hơn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (det1:Detail {name:"thai phụ có gặp khó khăn khi ngủ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"khi cơ thể ngày một to hơn, việc tìm tư thế ngủ thoải mái khó khăn hơn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 36 | Chunk 3 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"chuột rút chân do áp lực tử cung", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"hội chứng chân không yên", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"ợ nóng do tử cung to", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"nghẹt mũi", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"cử động của bé", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

MERGE (s6:Symptom {name:"cảm giác mắc tiểu nhiều hơn", layer:"Symptom"})
MERGE (s6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s6)

MERGE (s7:Symptom {name:"giấc mơ kỳ lạ vào tuần cuối thai kỳ", layer:"Symptom"})
MERGE (s7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s7)

// ===== Article 36 | Chunk 4 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ham muốn tình dục có thể giảm do cơ thể nặng nề và bận rộn chuẩn bị cho sinh nở", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"quan hệ tình dục vẫn an toàn trong 3 tháng cuối, trừ khi bác sĩ khuyên ngừng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 36 | Chunk 5 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"chứng suy tĩnh mạch ở chân", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"bệnh trĩ do giãn tĩnh mạch trực tràng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"sưng phù tay chân mặt", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"dấu hiệu tiền sản giật nếu kèm đau đầu, mờ mắt", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (sym4:Symptom {name:"dị cảm và tê tay/chân do phù chèn ép dây thần kinh", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym4)
MERGE (sym4)-[:CONTEXT]->(tk)

MERGE (sym5:Symptom {name:"hội chứng ống cổ tay khi mang thai", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym5)
MERGE (sym5)-[:CONTEXT]->(tk)

// ===== Article 36 | Chunk 6 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đau nhức lưng", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"đau nhức xương chậu", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"đau nhức hông", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"đau bụng do dây chằng căng", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"hụt hơi vì tử cung to ép phổi", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"vú to và tiết sữa non", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"khí hư nhiều hơn", layer:"Symptom"})
MERGE (s7)-[:HAS_SYMPTOM]->(s)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần báo bác sĩ nếu có máu", layer:"Advice"})
MERGE (a1)-[:HAS_ADVICE]->(s)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"thai nhi ít máy do không gian chật", layer:"Symptom"})
MERGE (s8)-[:HAS_SYMPTOM]->(s)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"cần theo dõi số lần cử động", layer:"Advice"})
MERGE (a2)-[:HAS_ADVICE]->(s)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 36 | Chunk 7 | Ba tháng cuối thai kỳ =====
MERGE (s:Topic {name:"Ba tháng cuối", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"em bé tụt xuống xương chậu (sụt bụng)", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"cổ tử cung bắt đầu xóa và mở", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"xuất hiện cơn gò Braxton Hicks mạnh hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"đau lưng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"đau bụng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"tiêu chảy", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s6)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"co thắt đều đặn và đau tăng dần → chuyển dạ thật", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s7)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"vỡ ối là dấu hiệu điển hình", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s8)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"bác sĩ sẽ tư vấn khi nào cần nhập viện", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 1 | HIV và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm máu là việc cần thiết trong theo dõi thai kỳ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"thông qua các xét nghiệm máu, bác sĩ có thể phát hiện được nhiễm trùng hoặc tình trạng bất thường", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"nếu phát hiện bất thường, việc điều trị sẽ làm giảm nguy cơ gây hại cho mẹ và thai nhi", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 38 | Chunk 2 | HIV và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (app1:Application {name:"công thức máu toàn phần (kiểm tra số lượng, kích thước hồng cầu, bạch cầu → phát hiện thiếu máu, nhiễm trùng, rối loạn đông máu)", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

// ===== Article 38 | Chunk 3 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm viêm gan B: phát hiện nhiễm virus viêm gan B", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"xét nghiệm viêm gan C: liên quan tải lượng virus và tình trạng đồng nhiễm HIV", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 4 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm Rubella (Sởi Đức): nếu nhiễm trong thai kỳ có thể gây dị tật bẩm sinh", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (a1:Advice {name:"nếu mẹ chưa có miễn dịch, có thể tiêm vaccine sau sinh để bảo vệ cho lần mang thai sau", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 38 | Chunk 5 | HIV và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xác định nhóm máu (A, B, AB, O) và Rh", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (p1:Population {name:"người Rh âm tính", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (a1:Advice {name:"cần tiêm globulin miễn dịch Rh để ngăn ngừa hình thành kháng thể, tránh thiếu máu nghiêm trọng cho thai nhi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 38 | Chunk 6 | HIV và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm giang mai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"giang mai bẩm sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu phát hiện sớm, có thể điều trị và dự phòng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 7 | HIV và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm HIV", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (def1:Definition {name:"HIV gây suy giảm miễn dịch (AIDS)", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"nhiều phụ nữ nhiễm HIV nhưng không biết", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"ngay cả khi không triệu chứng, vẫn có 25% nguy cơ lây truyền cho con", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)
MERGE (rf2)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"nếu điều trị, nguy cơ lây truyền có thể giảm xuống ~1%", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 8 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu mẹ nhiễm hiv khi mang thai: có thể lây cho con khi mang thai, sinh nở hoặc cho bú. dùng thuốc đặc trị hiv và sinh mổ có thể được khuyến nghị", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"điều trị giảm nguy cơ lây truyền từ 25% xuống ~1%", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 38 | Chunk 9 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"sau khi sinh, con sẽ được xét nghiệm HIV", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"con sẽ dùng thuốc đặc trị trong 6 tuần", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"em bé có thể nhiễm HIV qua sữa mẹ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"phụ nữ nhiễm HIV không nên cho con bú", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 10 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu thai phụ từ chối xét nghiệm HIV, sẽ được chăm sóc như bình thường nhưng không có thuốc bảo vệ mẹ và con", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể được xét nghiệm nhanh khi chuyển dạ nếu chưa xét nghiệm trước đó", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 38 | Chunk 11 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"khi xét nghiệm HIV, kết quả được bảo mật tuyệt đối", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"nếu dương tính, bác sĩ sẽ chỉ định điều trị cho mẹ và em bé ngay sau sinh", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 38 | Chunk 12 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"thời điểm xét nghiệm HIV: nên làm ngay trong lần khám thai đầu tiên", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"khi xét nghiệm, một lượng máu sẽ được lấy từ cánh tay cùng với các xét nghiệm thai kỳ khác", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 38 | Chunk 13 | Hiv và các xét nghiệm máu quan trọng khác khi thai kỳ =====
MERGE (s:SubDisease {name:"HIV", layer:"SubDisease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"nếu kết quả hiv âm tính: không nhiễm bệnh", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"tuy nhiên cần lưu ý giai đoạn cửa sổ (4–8 tuần sau phơi nhiễm mới cho kết quả dương tính)", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (app2:Application {name:"nếu kết quả dương tính: bác sĩ sẽ tư vấn, làm xét nghiệm khẳng định và chỉ định điều trị", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

// ===== Article 40 | Chunk 1 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"siêu âm là năng lượng dạng sóng âm", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"đầu dò phát sóng âm, thu sóng dội, biến thành hình ảnh", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"dùng để theo dõi thai và chẩn đoán bệnh lý khác", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 40 | Chunk 2 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"theo dõi thai kỳ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"phát hiện dị tật bẩm sinh", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"hướng dẫn chọc ối", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"sinh thiết gai nhau", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"có 3 loại: siêu âm sàng lọc, siêu âm thường, siêu âm nâng cao", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 40 | Chunk 3 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"phát hiện dị tật", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"tính tuổi thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"xác định vị trí – nhịp tim thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"ước lượng cân nặng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (app5:Application {name:"đánh giá dịch ối", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app5)
MERGE (app5)-[:CONTEXT]->(tk)

MERGE (app6:Application {name:"đánh giá nhau thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app6)
MERGE (app6)-[:CONTEXT]->(tk)

MERGE (app7:Application {name:"đếm số lượng thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app7)
MERGE (app7)-[:CONTEXT]->(tk)

MERGE (app8:Application {name:"xác định giới tính", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app8)
MERGE (app8)-[:CONTEXT]->(tk)

// ===== Article 40 | Chunk 4 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"trả lời câu hỏi cụ thể", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"kiểm tra vị trí thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"kiểm tra tim thai khi có chảy máu âm đạo", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"đánh giá bánh nhau", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

// ===== Article 40 | Chunk 5 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"khi có nghi ngờ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"theo dõi phát triển thai", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (app3:Application {name:"dùng kỹ thuật Doppler", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

MERGE (app4:Application {name:"dùng kỹ thuật 3D", layer:"Application"})
MERGE (app4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app4)

// ===== Article 40 | Chunk 6 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"nên siêu âm sàng lọc ít nhất 1 lần (tuần 18–22)", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"có thể siêu âm sớm quý I để ước lượng tuổi thai, sàng lọc rối loạn di truyền, đếm số thai, nhịp tim, phát hiện thai ngoài tử cung", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 40 | Chunk 7 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"khảo sát u vùng chậu", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"xác định nguyên nhân đau bụng và chảy máu tử cung bất thường", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (app3:Application {name:"xác định vị trí IUD", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

MERGE (app4:Application {name:"chẩn đoán vô sinh", layer:"Application"})
MERGE (app4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app4)

MERGE (app5:Application {name:"theo dõi sau điều trị", layer:"Application"})
MERGE (app5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app5)

// ===== Article 40 | Chunk 8 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"cách thực hiện: siêu âm bụng → bôi gel, đầu dò di chuyển", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"siêu âm âm đạo → đưa đầu dò nhỏ bọc bao cao su vào âm đạo", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (det1:Detail {name:"tùy chỉ định mà chọn loại", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 40 | Chunk 9 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không nên siêu âm tùy tiện, chỉ thực hiện khi có chỉ định y khoa", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"chưa có bằng chứng siêu âm gây hại thai nhi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 40 | Chunk 10 | Siêu âm trong thai kỳ =====
MERGE (s:Topic {name:"Siêu âm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"dùng để chẩn đoán dị tật bẩm sinh", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"dùng để xác định tuổi thai", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (app3:Application {name:"dùng để theo dõi sự phát triển của thai", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

MERGE (app4:Application {name:"dùng để phát hiện thai ngoài tử cung", layer:"Application"})
MERGE (app4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app4)

MERGE (app5:Application {name:"dùng để phát hiện u xơ tử cung", layer:"Application"})
MERGE (app5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app5)

MERGE (app6:Application {name:"dùng để theo dõi bánh nhau", layer:"Application"})
MERGE (app6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app6)

MERGE (app7:Application {name:"dùng để theo dõi sự phát triển của thai trong tam cá nguyệt", layer:"Application"})
MERGE (app7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app7)

MERGE (app8:Application {name:"dùng để theo dõi sự phát triển của thai bằng sóng siêu âm", layer:"Application"})
MERGE (app8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app8)

MERGE (app9:Application {name:"dùng để theo dõi sự phát triển của thai bằng đầu dò", layer:"Application"})
MERGE (app9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app9)

MERGE (app10:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình chọc ối", layer:"Application"})
MERGE (app10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app10)

MERGE (app11:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình sinh thiết gai nhau", layer:"Application"})
MERGE (app11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app11)

MERGE (app12:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình sinh thiết", layer:"Application"})
MERGE (app12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app12)

MERGE (app13:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình IUD", layer:"Application"})
MERGE (app13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app13)

MERGE (app14:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình X-quang tuyến vú", layer:"Application"})
MERGE (app14)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app14)

MERGE (app15:Application {name:"dùng để theo dõi sự phát triển của thai trong quá trình bác sĩ sản phụ khoa theo dõi", layer:"Application"})
MERGE (app15)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app15)

MERGE (det1:Detail {name:"siêu âm là một phương pháp an toàn", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"siêu âm không gây đau", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"siêu âm không gây tác dụng phụ", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"siêu âm không gây ảnh hưởng đến thai", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (det5:Detail {name:"siêu âm có thể phát hiện nang", layer:"Detail"})
MERGE (det5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det5)

MERGE (det6:Detail {name:"siêu âm có thể phát hiện rối loạn di truyền", layer:"Detail"})
MERGE (det6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det6)

// ===== Article 42 | Chunk 1 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"căng cơ vùng lưng", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tử cung to và nặng hơn", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"phần trước cơ thể nặng làm mẹ bầu có xu hướng ngả ra trước", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (c4:Cause {name:"tư thế thay đổi khiến nhóm cơ lưng bị căng", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"đau, mỏi, cứng cơ", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

// ===== Article 42 | Chunk 2 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (c1:Cause {name:"cơ bụng yếu", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (c2:Cause {name:"cơ vùng bụng bị giãn và yếu hơn", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (c3:Cause {name:"giảm khả năng nâng đỡ", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (c4:Cause {name:"góp phần gây đau lưng khi vận động", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

// ===== Article 42 | Chunk 3 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (c1:Cause {name:"thay đổi nội tiết tố", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (c2:Cause {name:"nội tiết tố thai kỳ làm giãn dây chằng khớp vùng chậu", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (c3:Cause {name:"giúp linh hoạt hơn khi sinh nở", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (c4:Cause {name:"gây đau do khớp bị giãn", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

// ===== Article 42 | Chunk 4 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh gập người nhặt đồ, nên dang gối và ngồi xuống từ từ, giữ lưng thẳng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"mang giày phù hợp (không quá phẳng hoặc quá cao gót)", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"khi ngồi, nên kê gối tựa lưng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"khi nằm, nằm nghiêng, kẹp gối giữa 2 chân và kê thêm gối dưới bụng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 42 | Chunk 5 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục nhẹ tăng sức cơ lưng và chân, giữ tư thế đúng (cần hướng dẫn chuyên môn và chỉ thực hiện nếu thai kỳ bình thường)", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể dùng túi chườm nóng hoặc lạnh tại chỗ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 42 | Chunk 6 | Đau lưng trong thai kỳ =====
MERGE (s:Topic {name:"Đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu đau nhiều, tăng dần hoặc kéo dài >2 tuần không giảm, cần đi khám", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đau lưng có thể báo hiệu chuyển dạ sinh non hoặc nhiễm trùng tiểu, nếu kèm sốt, tiểu buốt, ra huyết âm đạo → cần khám ngay", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 50 | Chunk 2 | Chụp x quang khi thai kỳ =====
MERGE (s:Topic {name:"Chụp x quang", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"chụp x quang khi có thai có an toàn không? nhìn chung, có. nếu bác sĩ chỉ định do vấn đề sức khỏe hoặc chấn thương, bạn không cần lo. thông tin từ phim x quang giúp bác sĩ chẩn đoán chính xác để đảm bảo sức khỏe của mẹ và thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

// ===== Article 50 | Chunk 3 | Chụp x quang khi thai kỳ =====
MERGE (s:Topic {name:"Chụp x quang", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tất cả các loại chụp x quang có cùng lượng phóng xạ không? không. mỗi loại sử dụng tia khác nhau, liều phóng xạ rất thấp.", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a1:Advice {name:"nếu chụp x quang cần thiết cho chẩn đoán thì vẫn nên thực hiện.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 50 | Chunk 4 | Chụp x quang khi thai kỳ =====
MERGE (s:Topic {name:"Chụp x quang", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu lỡ chụp x quang mà không biết có thai thì sao? hãy báo cho bác sĩ để họ xác định chính xác mức phóng xạ phơi nhiễm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"nguy cơ nhiễm xạ rất thấp, thai nhi bình thường", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"phơi nhiễm thường không quá 5 rad, thấp hơn nhiều so với ngưỡng nguy hiểm", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 50 | Chunk 5 | Chụp x quang khi thai kỳ =====
MERGE (s:Topic {name:"Chụp x quang", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chụp x quang khi mang thai không gây dị tật bẩm sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"khoảng 4-6% trẻ vẫn có dị tật bẩm sinh nhẹ như u nhú da, thừa ngón", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

// ===== Article 50 | Chunk 6 | Chụp x quang khi thai kỳ =====
MERGE (s:Topic {name:"Chụp x quang", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"có phương pháp thay thế x quang khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"siêu âm là lựa chọn an toàn và hiệu quả", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"mri cũng an toàn trong quý đầu thai kỳ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tuy nhiên, trong một số trường hợp đặc biệt, chụp x quang vẫn là cần thiết và là lựa chọn tốt nhất", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 52 | Chunk 1 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đau chân có thể ảnh hưởng tới thai phụ ở một số thời điểm trong thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"cơn đau thường trong giới hạn chịu đựng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"đôi khi gây khó chịu và ảnh hưởng sinh hoạt hàng ngày", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 2 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tình trạng này khá phổ biến, thường bắt đầu từ cuối tam cá nguyệt thứ hai do phù chân và rõ rệt hơn trong tam cá nguyệt thứ ba khi đôi chân chịu áp lực tăng dần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 3 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (c1:Cause {name:"tăng cân gây áp lực lên dây chằng chân khiến đau nhức", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 4 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi trọng tâm cơ thể do thai lớn dần", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tư thế đi đứng bị lệch", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"tăng áp lực lên đôi chân", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 5 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nội tiết tố relaxin làm giãn cơ và dây chằng vùng chậu", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nội tiết tố relaxin gây giãn dây chằng chân", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (s1:Symptom {name:"đau", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"viêm", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

// ===== Article 52 | Chunk 6 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (c1:Cause {name:"thay đổi tuần hoàn máu gây ứ dịch ở bàn chân", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c2:Cause {name:"thay đổi tuần hoàn máu gây ứ dịch ở mắt cá", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c3:Cause {name:"thay đổi tuần hoàn máu gây ứ dịch ở toàn bộ chân", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 52 | Chunk 7 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"relaxin", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tăng cân", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"bàn chân phẳng (vòm chân thấp)", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (c4:Cause {name:"kéo căng cân gan chân và dây chằng", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"bàn chân đau nhức", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 8 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập yoga, thể dục lâu dài giúp giảm đau chân", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"có thể dùng lót giày chỉnh hình để giảm đau", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"có thể dùng lót giày chỉnh hình để giảm phù nề", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"có thể dùng lót giày chỉnh hình để giảm vòm chân thấp", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 9 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"tránh giày cao gót hoặc bó sát", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a2:Advice {name:"nên mang giày đế thấp và thoải mái để hỗ trợ vòm bàn chân và mắt cá", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 52 | Chunk 10 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chườm nóng hoặc lạnh giúp giảm đau và sưng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh đứng lâu, khi đứng nên đổi trọng lực giữa hai chân", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ngồi thì co – duỗi bàn chân để giảm căng dây chằng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 52 | Chunk 11 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ chậm quãng ngắn để cải thiện tuần hoàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"kê gối nâng chân khi ngủ để giảm phù", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"xoa bóp nhẹ bàn chân giúp dịu đau", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nhưng tránh tác động sâu nếu chưa hỏi ý kiến bác sĩ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 52 | Chunk 12 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không tự ý dùng thuốc giảm đau, thực phẩm chức năng, châm cứu, bấm huyệt khi mang thai nếu chưa tham khảo ý kiến bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu đau nhiều → đi khám", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 52 | Chunk 13 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đau chân không phải là dấu hiệu mang thai sớm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"đau chân có thể xảy ra bởi nhiều nguyên nhân", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"chuột rút", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"đau chân", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chuột rút hoặc đau chân không phải cách đáng tin để xác nhận mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"nếu nghi ngờ có thai → cần khám bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 52 | Chunk 14 | Đau chân trong thai kỳ =====
MERGE (s:Topic {name:"Đau chân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"đau chân", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"phù nề", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"bàn chân phẳng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (advice1:Advice {name:"có thể giảm khó chịu nhờ áp dụng biện pháp phòng ngừa và chăm sóc thích hợp", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice1)
MERGE (advice1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 1 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"sự dao động của nồng độ hormon", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (a1:Advice {name:"đổ mồ hôi nhiều có thể được khắc phục với một số mẹo nhỏ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"Phụ nữ mang thai có thể bị đổ mồ hôi nhiều hơn bình thường", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"mặc dù gây nhiều khó chịu, đổ mồ hôi nhiều có thể là hiện tượng sinh lý khi mang thai", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 53 | Chunk 2 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hiện tượng tăng tiết mồ hôi có thể bắt đầu xuất hiện trong suốt thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"tăng thân nhiệt khi mang thai có thể dẫn đến tăng tiết mồ hôi", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đây là phản ứng giúp cơ thể điều hòa thân nhiệt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"vùng hạ đồi là trung tâm kiểm soát thân nhiệt", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"nhiệt độ cơ thể tăng nhẹ do thay đổi hormon, tăng lưu lượng máu và tăng cân", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 3 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tăng tiết mồ hôi thường gặp hơn về đêm, gọi là chứng 'ra mồ hôi trộm'", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"sự dao động của estrogen và progesterone", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"cũng có thể gặp ở độ tuổi mãn kinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 4 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"tăng chuyển hóa khi mang thai", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"tiêu thụ nhiều calories", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"sinh nhiệt nhiều hơn", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"kích thích tuyến mồ hôi", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

// ===== Article 53 | Chunk 5 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"cường giáp – làm tăng nhiệt độ cơ thể, đổ mồ hôi cả ngày lẫn đêm, kéo dài đến sau sinh", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"cường giáp làm tăng nhịp tim, tăng chuyển hóa và tăng tiết mồ hôi", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 53 | Chunk 6 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"hạ đường máu khi mang thai", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 7 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"tác dụng phụ của thuốc hạ sốt", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"tác dụng phụ của thuốc điều trị tăng huyết áp", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 53 | Chunk 8 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"tăng lưu lượng tuần hoàn khi mang thai làm tăng nhiệt độ cơ thể", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"ở 3 tháng cuối, thể tích tuần hoàn có thể tăng 50%", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 53 | Chunk 9 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nhiễm trùng", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"sốt", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"bệnh lý khác như nhiễm trùng tiết niệu khi mang thai", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 53 | Chunk 10 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nồng độ progesterone cao làm tăng thân nhiệt và gây tăng tiết mồ hôi", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 11 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi nội tiết tố nói chung trong thai kỳ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (det1:Detail {name:"khó chịu, kèm theo tăng thân nhiệt nhẹ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 53 | Chunk 12 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"tăng cân, đặc biệt 3 tháng cuối thai kỳ, làm cơ thể gắng sức nhiều hơn, sinh nhiệt nhiều hơn", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"thay đổi trọng tâm khiến cơ thể phải hoạt động nhiều hơn để giữ thăng bằng", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 13 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thời tiết nóng ẩm làm mẹ bầu đổ mồ hôi nhiều", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 14 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"hoạt động thể lực (tập thể dục, lao động gắng sức)", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 15 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"lo lắng", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"căng thẳng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 53 | Chunk 16 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"ăn đồ cay", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"sử dụng caffeine", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 53 | Chunk 17 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh ra ngoài nắng nóng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục sáng/tối", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"mặc quần áo sáng màu, mềm mại, thoáng mát", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 53 | Chunk 18 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh đồ ăn cay", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh đồ uống nóng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"bổ sung điện giải", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 53 | Chunk 19 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phát hiện và điều trị sớm nhiễm trùng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"kiểm tra lại thuốc đang dùng, tham khảo ý kiến bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (t1:Treatment {name:"có thể dùng bột hút mồ hôi (không chứa Talc)", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

// ===== Article 53 | Chunk 20 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"theo dõi thay đổi cơ thể, báo cho bác sĩ biết để được hướng dẫn và tư vấn phù hợp", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 21 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"khi đổ mồ hôi quá nhiều ngay cả khi thời tiết mát mẻ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"khi kèm theo sốt, tăng nhịp tim", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hoặc khi gây khó chịu nhiều", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 53 | Chunk 22 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tăng tiết mồ hôi có thể là triệu chứng sớm của mang thai", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"thay đổi hormon", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tăng chuyển hóa", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 23 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ra mồ hôi trộm khi mang thai thường không nguy hiểm, nhưng nếu kèm ngứa, mẩn đỏ hoặc sốt thì cần đi khám", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 53 | Chunk 24 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thời gian kéo dài tùy từng người, có thể từ đầu thai kỳ đến cuối, hoặc đến sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 53 | Chunk 25 | Tăng tiết mồ hôi khi thai kỳ =====
MERGE (s:Topic {name:"Tăng tiết mồ hôi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tiết mồ hôi khi mang thai gây khó chịu nhưng giúp điều hòa thân nhiệt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"không thể tránh hoàn toàn nhưng có thể giảm nhẹ bằng thay đổi lối sống", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 54 | Chunk 4 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"huyết áp cao xuất hiện sau 20 tuần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"thường biến mất sau sinh nhưng làm tăng nguy cơ cao huyết áp sau này", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 54 | Chunk 5 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"tăng áp lực cho tim và thận", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"tăng nguy cơ tim mạch", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"tăng nguy cơ thận", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"tăng nguy cơ đột quỵ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

MERGE (comp5:Complication {name:"thai chậm phát triển", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp5)
MERGE (comp5)-[:CONTEXT]->(tk)

MERGE (comp6:Complication {name:"tiền sản giật", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp6)
MERGE (comp6)-[:CONTEXT]->(tk)

MERGE (comp7:Complication {name:"sinh non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp7)
MERGE (comp7)-[:CONTEXT]->(tk)

MERGE (comp8:Complication {name:"nhau bong non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp8)
MERGE (comp8)-[:CONTEXT]->(tk)

MERGE (comp9:Complication {name:"nguy cơ mổ lấy thai cao hơn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp9)
MERGE (comp9)-[:CONTEXT]->(tk)

// ===== Article 54 | Chunk 6 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"theo dõi huyết áp thường xuyên, có thể tự đo tại nhà", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"siêu âm theo dõi thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (t1:Treatment {name:"nếu nhẹ có thể không cần thuốc hoặc giảm liều", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"nếu nặng cần dùng thuốc hạ áp trong thai kỳ", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 55 | Chunk 1 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tăng huyết áp đang là một vấn đề đáng quan tâm khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"đặc biệt đối với những phụ nữ đã được chẩn đoán tăng huyết áp mạn tính trước đó", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (def1:Definition {name:"tăng huyết áp mạn tính là tình trạng tăng huyết áp được chẩn đoán trước khi mang thai hay trước tuần lễ thứ 20 của thai kỳ hoặc kéo dài đến hơn 12 tuần sau sinh", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

// ===== Article 55 | Chunk 2 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tăng huyết áp xuất hiện khi mang thai có thể là một dấu hiệu của tiền sản giật", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"mặc dù tăng huyết áp thai kỳ và tiền sản giật có thể liên quan với nhau nhưng chúng vẫn có sự khác biệt", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (a1:Advice {name:"nếu bạn được chẩn đoán tăng huyết áp trước khi mang thai, thì nên tìm hiểu những ảnh hưởng của bệnh lên thai kỳ hoặc thậm chí cân nhắc đến việc có nên mang thai hay không", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 55 | Chunk 3 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên đến gặp bác sĩ trước khi mang thai để kiểm tra huyết áp của bạn có đang được kiểm soát tốt và xem xét các loại thuốc hạ áp đang sử dụng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"một số loại thuốc hạ áp không an toàn trong thai kỳ và có thể ảnh hưởng không tốt cho thai nhi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 55 | Chunk 4 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"suy tim tiến triển", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"mờ mắt", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"đột quỵ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"co giật", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

MERGE (comp5:Complication {name:"biến chứng gan", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp5)
MERGE (comp5)-[:CONTEXT]->(tk)

MERGE (comp6:Complication {name:"biến chứng thận", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp6)
MERGE (comp6)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"trong thai kì, tăng huyết áp mạn tính có thể tiến triển nặng hơn, đặc biệt khi xuất hiện tiền sản giật ghép trên nền tăng huyết áp có sẵn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 55 | Chunk 6 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thai kì có các bệnh lý mãn tính như tăng huyết áp được xếp nhóm nguy cơ cao", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần theo dõi sát tại trung tâm chẩn đoán trước sinh và đơn vị sơ sinh để giảm biến chứng và có sự chăm sóc đặc biệt cho trẻ sau sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 55 | Chunk 7 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"bạn có thể bị tăng huyết áp mãn tính nhưng vẫn có thể sinh ra những em bé khỏe mạnh", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (comp1:Complication {name:"tăng huyết áp mãn tính có khả năng gây ra những ảnh hưởng không tốt đối với sự phát triển của thai nhi", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 55 | Chunk 8 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"thai chậm tăng trưởng trong tử cung", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"nguy cơ cao mắc các vấn đề hô hấp trước hoặc trong khi chuyển dạ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"nguy cơ nhau bong non cao hơn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"có thể xảy ra tác dụng phụ từ các loại thuốc bạn đang dùng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 55 | Chunk 9 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"mặc dù chưa có cách chữa khỏi triệt để tăng huyết áp mạn tính, nhưng có nhiều biện pháp quản lý", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chăm sóc sức khỏe mẹ chính là chăm sóc sức khỏe thai nhi tốt nhất", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 55 | Chunk 10 | Tăng huyết áp thai kỳ =====
MERGE (s:Disease {name:"Tăng huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn uống lành mạnh, giảm muối", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"dùng thuốc hạ áp theo chỉ định", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"khám thai đầy đủ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tập thể dục đều đặn (hoặc nghỉ ngơi theo chỉ định nếu có tiền sản giật)", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"không hút thuốc, không uống rượu bia, không dùng ma túy", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"theo dõi cân nặng và tránh tăng cân quá nhiều", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 56 | Chunk 1 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nhiều phụ nữ bị sốc khi phát hiện ra rằng mình mắc tiểu đường thai kỳ vì thường không có dấu hiệu cụ thể", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 56 | Chunk 2 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"đi tiểu thường xuyên hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"khát nước nhiều hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"cực kỳ mệt mỏi", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"những dấu hiệu này ít phổ biến và cũng thường xảy ra trong thai kỳ nên dễ bị bỏ qua", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 56 | Chunk 3 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"kiểm soát đường huyết khi mang thai vô cùng quan trọng đối với sức khỏe của mẹ và bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"ở một số phụ nữ, tiểu đường thai kỳ có thể kiểm soát bằng chế độ ăn uống và hoạt động thể chất", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"nhiều trường hợp cần dùng thuốc, bao gồm tiêm insulin", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

// ===== Article 56 | Chunk 4 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nữ hộ sinh, bác sĩ, y tá và chuyên gia dinh dưỡng sẽ làm việc với bạn để đặt mục tiêu đường huyết", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"theo dõi mức đường huyết chính xác và đạt mục tiêu sẽ giúp giảm nguy cơ biến chứng, tăng cơ hội mang thai khỏe mạnh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 56 | Chunk 5 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"nguy cơ biến chứng sẽ tăng lên", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 56 | Chunk 6 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"cần phải giục sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"sinh mổ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"sinh con lớn hơn bình thường (thai to)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"gây khó khăn và căng thẳng cho em bé khi sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

// ===== Article 56 | Chunk 7 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ sơ sinh có nguy cơ bị hạ đường huyết sơ sinh", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ sơ sinh có nguy cơ tử vong chu sinh (thai chết lưu từ tuần 28 đến 7 ngày sau sinh)", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

// ===== Article 56 | Chunk 8 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ sinh ra từ mẹ bị tiểu đường thai kỳ có nguy cơ thừa cân hoặc béo phì cao hơn", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ sinh ra từ mẹ bị tiểu đường thai kỳ có nguy cơ phát triển bệnh tiểu đường type 2", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (a1:Advice {name:"việc kiểm soát cân nặng, duy trì chế độ ăn uống lành mạnh và hoạt động thể chất sẽ giúp giảm nguy cơ này", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 57 | Chunk 1 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"trang phục khi mang thai cần mềm mại, thoải mái, cho phép bụng mở rộng để mẹ và bé dễ chịu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 57 | Chunk 2 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ngày xưa, phụ nữ mang thai mặc đồ cũ, ít quan tâm bề ngoài", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"ngày nay, họ cần trang phục vừa thoải mái vừa đẹp để đi làm, giao tiếp, du lịch", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 57 | Chunk 3 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"phong cách: có người chọn dịu dàng, có người khoe bụng, có người muốn che giấu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"thời trang đa dạng đáp ứng các lựa chọn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 57 | Chunk 4 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nguyên tắc chọn đồ: nhẹ, thoải mái, không quá chật", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể mặc truyền thống, đồ hỗ trợ bụng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"miễn là tự tin", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 57 | Chunk 5 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"yếu tố chọn đồ: tùy lối sống, công việc, ngân sách", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"quần áo cần rộng, dễ thở, thay đổi theo từng tuần thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 57 | Chunk 6 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên chọn đồ chất lượng tốt", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"gợi ý: áo vạt chéo, áo dài thân bằng vải mềm, cotton, thoáng khí", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh họa tiết đậm, chọn áo sơ mi dài thân", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 57 | Chunk 7 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"ưu tiên thoải mái: quần bầu lưng thun, váy suông, không cản trở lưu thông máu hay cử động của thai nhi", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 57 | Chunk 8 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"kích cỡ: cần đủ rộng cho ngực và bụng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chọn size lớn hơn khi thai kỳ tiến triển", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 57 | Chunk 9 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"trang phục công sở: 3 tháng đầu có thể mặc bình thường", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"các tháng sau cần size lớn", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nên chọn đồ thoáng mát, màu sáng, áo sơ mi rộng, váy suông", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 57 | Chunk 10 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"quần áo tập thể dục: cần thoáng, co giãn, chất liệu cotton/lycra/spandex, thấm hút mồ hôi, tránh bó chặt", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"chừa không gian cho bụng", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 57 | Chunk 11 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cần áo mới bằng cotton, hỗ trợ lưng và vai, đảm bảo thoải mái", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"ngực lớn và nhạy cảm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 57 | Chunk 12 | Quần áo cho bà bầu =====
MERGE (s:Topic {name:"Quần áo", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên dùng dép bệt hoặc giày đế bằng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh giày cao gót", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 58 | Chunk 1 | Sử dụng thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Sử dụng thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh sử dụng thuốc trong khi mang thai rất quan trọng vì có thể gây hại cho sự phát triển thai nhi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (rf1:RiskFactor {name:"ma túy bất hợp pháp như cần sa, cocaine, methamphetamine", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"thuốc kê đơn", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"caffeine", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

MERGE (rf4:RiskFactor {name:"rượu", layer:"RiskFactor"})
MERGE (rf4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)

MERGE (comp1:Complication {name:"có nguy cơ ảnh hưởng lâu dài đến thai nhi", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 58 | Chunk 2 | Sử dụng thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Sử dụng thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"người mẹ có thể không gặp vấn đề, nhưng thai nhi chịu tác động nặng nề", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"mẹ nghiện ma túy dễ sinh ra 'em bé ma túy' với nhiều vấn đề phát triển", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"nếu mẹ hút thuốc, uống rượu, dùng caffein, cần sa, cocaine hoặc methamphetamine thì thai nhi cũng bị ảnh hưởng", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

// ===== Article 58 | Chunk 3 | Sử dụng thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Sử dụng thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"tăng nguy cơ dị tật bẩm sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"tăng nguy cơ sinh non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"tăng nguy cơ trẻ nhẹ cân", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"tăng nguy cơ thai chết lưu", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

MERGE (comp5:Complication {name:"gây bất thường hành vi", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp5)
MERGE (comp5)-[:CONTEXT]->(tk)

MERGE (comp6:Complication {name:"ảnh hưởng trí nhớ và sự tập trung", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp6)
MERGE (comp6)-[:CONTEXT]->(tk)

MERGE (comp7:Complication {name:"thay đổi cấu trúc não bộ của trẻ kéo dài đến tuổi thiếu niên", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp7)
MERGE (comp7)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"cần sa, rượu, cocaine", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

// ===== Article 58 | Chunk 4 | Sử dụng thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Sử dụng thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ sinh ra từ mẹ dùng cocaine có nguy cơ chậm phát triển nhận thức", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ sinh ra từ mẹ dùng cocaine có nguy cơ giảm chú ý", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"trẻ sinh ra từ mẹ dùng cocaine có nguy cơ khó khăn học tập", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)


// ===== Article 58 | Chunk 6 | Hút thuốc trong thai kỳ =====
MERGE (s:Topic {name:"Hút thuốc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"hút thuốc lá truyền nicotine và hóa chất gây ung thư cho thai nhi", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (comp1:Complication {name:"làm tăng nguy cơ dị tật tim bẩm sinh (thông liên thất, thông liên nhĩ)", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"nhiều trẻ tử vong trong năm đầu hoặc tàn tật lâu dài", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"cũng gây ảnh hưởng đến nhau thai, tăng nguy cơ nhẹ cân, sinh non, hở hàm ếch và hội chứng đột tử ở trẻ sơ sinh (SIDS)", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

// ===== Article 58 | Chunk 7 | Rượu trong thai kỳ =====
MERGE (s:Topic {name:"Rượu", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"hội chứng nghiện rượu bào thai (FAS)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"rối loạn thai nhi do rượu (FASD)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"bất thường khuôn mặt", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"chậm tăng trưởng", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

MERGE (comp5:Complication {name:"rối loạn thần kinh trung ương", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp5)
MERGE (comp5)-[:CONTEXT]->(tk)

MERGE (comp6:Complication {name:"thiểu năng trí tuệ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp6)
MERGE (comp6)-[:CONTEXT]->(tk)

MERGE (comp7:Complication {name:"kém tập trung", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp7)
MERGE (comp7)-[:CONTEXT]->(tk)

MERGE (comp8:Complication {name:"khuyết tật thể chất (nghe, nhìn)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp8)
MERGE (comp8)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"không có mức độ an toàn khi uống rượu khi mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 58 | Chunk 8 | Caffeine trong thai kỳ =====
MERGE (s:Topic {name:"Caffeine", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"caffeine là chất kích thích hợp pháp, có trong cà phê, soda, sôcôla", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"lượng lớn caffeine có thể gây khó chịu và sinh con nhẹ cân", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"fda từng cảnh báo về độc tính của caffeine", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai nên hạn chế caffein", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)



// ===== Article 58 | Chunk 12 | Thuốc an toàn trong thai kỳ =====
MERGE (s:Topic {name:"Thuốc an toàn", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đọc nhãn thuốc, hỏi bác sĩ trước khi dùng thảo dược hoặc chế phẩm chưa kiểm chứng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh aspirin và ibuprofen trong 3 tháng cuối, trừ khi có chỉ định bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nên dùng vitamin trước sinh an toàn theo hướng dẫn bác sĩ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 59 | Chunk 1 | Say tàu xe khi thai kỳ =====
MERGE (s:Topic {name:"Tàu xe", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"phụ nữ mang thai thường dễ bị say tàu xe hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"phụ nữ mang thai", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"nôn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"đi ô tô", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"đi máy bay", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"đi tàu thuyền", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"một số người chỉ bị trong thai kỳ, số khác có sẵn từ trước và tăng lên lúc mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 59 | Chunk 2 | Say tàu xe khi thai kỳ =====
MERGE (s:Topic {name:"Tàu xe", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"xe di chuyển chậm gây mất cân bằng trong tai", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"ăn quá no", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"không khí ngột ngạt hoặc nhiều khói", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"não nhận tín hiệu nhầm do bất đồng giữa chuyển động dự kiến và thực tế", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"rối loạn chất dẫn truyền thần kinh", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

// ===== Article 59 | Chunk 3 | Say tàu xe khi thai kỳ =====
MERGE (s:Topic {name:"Tàu xe", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đau đầu nhẹ", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"mệt mỏi", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"chóng mặt", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"yếu sức", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"lo lắng", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"tăng tiết nước bọt", layer:"Symptom"})
MERGE (s7)-[:HAS_SYMPTOM]->(s)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"đổ mồ hôi", layer:"Symptom"})
MERGE (s8)-[:HAS_SYMPTOM]->(s)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (s9:Symptom {name:"xanh xao", layer:"Symptom"})
MERGE (s9)-[:HAS_SYMPTOM]->(s)
MERGE (s9)-[:CONTEXT]->(tk)

MERGE (s10:Symptom {name:"nôn nhiều", layer:"Symptom"})
MERGE (s10)-[:HAS_SYMPTOM]->(s)
MERGE (s10)-[:CONTEXT]->(tk)

MERGE (s11:Symptom {name:"mất nước", layer:"Symptom"})
MERGE (s11)-[:HAS_SYMPTOM]->(s)
MERGE (s11)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"thường hết khi ngừng di chuyển, đôi khi kéo dài đến 3 ngày", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 59 | Chunk 4 | Say tàu xe khi thai kỳ =====
MERGE (s:Topic {name:"Tàu xe", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"dùng thuốc kháng Histamine (Diphenhydramine, Dimenhydrinate) 30 phút trước chuyến đi", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"Scopolamine dạng dán 12 giờ trước đi", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"Meclizine cho hiệu quả lâu dài", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

MERGE (t4:Treatment {name:"bổ sung Vitamin B6", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t4)
MERGE (t4)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chọn vị trí ngồi ít rung lắc (ghế trước xe, sau cánh máy bay, giữa thuyền)", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"đeo vòng bấm huyệt", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 59 | Chunk 5 | Say tàu xe khi thai kỳ =====
MERGE (s:Topic {name:"Tàu xe", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chứng say tàu xe khi mang thai có thể kiểm soát bằng thuốc và biện pháp tự nhiên", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"trước khi dùng thuốc cần tham khảo ý kiến bác sĩ để đảm bảo an toàn cho mẹ và bé", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 60 | Chunk 1 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ em có mẹ bị trầm cảm khi mang thai có nhiều khả năng bị chậm phát triển", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"nguy cơ chậm phát triển tâm thần – vận động ở những trẻ có mẹ bị trầm cảm trong khi mang thai có thể lên đến 34%", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

MERGE (p2:Population {name:"nguy cơ này có thể lên đến 50% nếu bà mẹ cũng mắc trầm cảm sau sinh", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p2)
MERGE (p2)-[:CONTEXT]->(tk)

// ===== Article 60 | Chunk 2 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"các nghiên cứu trước đây đã chỉ ra sự liên quan giữa trầm cảm sau sinh với quá trình phát triển của trẻ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"mục tiêu của nghiên cứu này là tìm xem liệu có sự liên quan giữa trầm cảm trong khi mang thai và quá trình phát triển của trẻ hay không", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nghiên cứu này không thể đưa ra kết luận rằng trầm cảm bất kì thời điểm nào cũng là nguyên nhân gây chậm phát triển bởi vì chậm phát triển của trẻ có rất nhiều nguyên nhân khác như y tế, di truyền và xã hội/môi trường", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 60 | Chunk 3 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các bà mẹ bị trầm cảm trong thai kì hoặc sau sinh không nên lo lắng quá rằng bệnh lý của họ có thể gây ra tình trạng chậm phát triển của con sau này", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"nghiên cứu này nhấn mạnh tần suất trầm cảm khi mang thai và việc làm mẹ sớm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a2:Advice {name:"nó cũng nhấn mạnh sự cần thiết cho những người chăm sóc sức khỏe phải cảnh giác với các dấu hiệu trầm cảm, và để đảm bảo rằng các bà mẹ và em bé của họ nhận được sự chăm sóc và hỗ trợ cần thiết", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 60 | Chunk 4 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"kiểm tra mối liên quan giữa trầm cảm của mẹ khi mang thai với sự phát triển của trẻ lúc 18 tháng tuổi", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"nghiên cứu đoàn hệ tương lai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"sử dụng dữ liệu từ Nghiên cứu theo dõi dọc của cha mẹ và trẻ em Avon (ALSPAC)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 60 | Chunk 5 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (p1:Population {name:"14.062 phụ nữ mang thai từ tháng 4 năm 1991 đến tháng 12 năm 1992", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (det1:Detail {name:"thông tin kinh tế xã hội, các thông tin về gia đình và các dữ liệu khác được thu thập ở tuần 18 và 32 của thai kỳ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (app1:Application {name:"những người phụ nữ đã điền câu trả lời vào bảng 10 câu hỏi EPDS", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

// ===== Article 60 | Chunk 6 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"các nhà nghiên cứu đã chia những người phụ nữ trong nghiên cứu thành 3 nhóm trầm cảm trước sinh: những người có tổng điểm thấp hơn ngưỡng, những người có điểm số lớn hơn hoặc bằng ngưỡng một lần, và những người có điểm số lớn hơn hoặc bằng ngưỡng trầm cảm hai lần trong thai kỳ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"ba ngưỡng khác nhau đã được dùng: 9 hoặc 10, 12 hoặc 13, và 14 hoặc 15 điểm", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 60 | Chunk 7 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"sự chậm phát triển ở trẻ được đánh giá bằng cách sử dụng một phiên bản sửa đổi của Thử nghiệm sàng lọc phát triển Denver (DDST), do cha mẹ hoàn thành", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (comp1:Complication {name:"trẻ được xem là chậm phát triển nếu chúng không hoàn thành nhiều hơn một mục trong bảng câu hỏi", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 60 | Chunk 8 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:RiskFactor {name:"trầm cảm mẹ", layer:"RiskFactor"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c1)

MERGE (c2:RiskFactor {name:"trầm cảm trước khi mang thai", layer:"RiskFactor"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c2)

MERGE (c3:RiskFactor {name:"trầm cảm và lo âu của bố", layer:"RiskFactor"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c3)

MERGE (c4:RiskFactor {name:"giới tính", layer:"RiskFactor"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c4)

MERGE (c5:RiskFactor {name:"dân tộc", layer:"RiskFactor"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c5)

MERGE (c6:RiskFactor {name:"nhân khẩu học", layer:"RiskFactor"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c6)

MERGE (c7:RiskFactor {name:"các sự kiện cuộc sống", layer:"RiskFactor"})
MERGE (c7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(c7)

MERGE (det1:Detail {name:"các kiểm định thống kê được sử dụng để tìm mối quan hệ giữa trầm cảm, chậm phát triển và các yếu tố khác", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 60 | Chunk 9 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (p1:Population {name:"14% thai phụ trầm cảm trong thai kỳ (cả hai thời điểm)", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (p2:Population {name:"1,4% thai phụ trầm cảm cả trong và sau sinh", layer:"Population"})
MERGE (p2)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p2)

MERGE (p3:Population {name:"4,8% thai phụ chỉ trầm cảm sau sinh", layer:"Population"})
MERGE (p3)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p3)

MERGE (p4:Population {name:"9% trẻ chậm phát triển ở 18 tháng tuổi", layer:"Population"})
MERGE (p4)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p4)

// ===== Article 60 | Chunk 10 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"nguy cơ sinh con chậm phát triển cao hơn 34% khi dùng ngưỡng 9/10", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"nguy cơ sinh con chậm phát triển tăng 50% khi dùng ngưỡng 12/13", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"ngưỡng 14/15 không có ý nghĩa", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"không có mối liên quan với trầm cảm chỉ tại một thời điểm", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

// ===== Article 60 | Chunk 11 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi tính cả trầm cảm sau sinh, nguy cơ chậm phát triển ở trẻ giảm nhưng vẫn có ý nghĩa với ngưỡng 10/11 và 12/13", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"không có ý nghĩa với ngưỡng 14/15", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 60 | Chunk 12 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"các nhà nghiên cứu kết luận rằng một số ảnh hưởng đối với sự phát triển sớm của trẻ có thể là do trầm cảm khi mang thai chứ không chỉ do trầm cảm sau sinh", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"nghiên cứu nhấn mạnh sự phổ biến của trầm cảm khi mang thai và sự cần thiết của chăm sóc sức khỏe tâm thần cho thai phụ", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 60 | Chunk 13 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"không thể kết luận quan hệ nhân quả", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"sự phát triển chậm ở 18 tháng chưa chắc phản ánh kết quả về sau", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"dữ liệu dựa trên báo cáo của cha mẹ", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"cỡ mẫu lớn nhưng vẫn hạn chế", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (det5:Detail {name:"đa số đối tượng là người Anh da trắng nên khó khái quát hóa", layer:"Detail"})
MERGE (det5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det5)

// ===== Article 60 | Chunk 14 | Trầm cảm khi thai kỳ =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trầm cảm trong thai kỳ và sau sinh thường xảy ra đột ngột", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"quan trọng là nhân viên y tế cần cảnh giác và hỗ trợ để đảm bảo mẹ và bé được chăm sóc đầy đủ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 1 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"tiểu đường thai kỳ là bệnh đái tháo đường được phát hiện lần đầu ở phụ nữ mang thai", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"một số trường hợp đã có tiểu đường nhẹ từ trước nhưng chưa chẩn đoán", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 2 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"đái tháo đường là tình trạng lượng glucose trong máu cao", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"glucose là nguồn năng lượng chính của cơ thể", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"khi quá cao sẽ gây vấn đề sức khỏe", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 3 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"khi mang thai, cơ thể kháng insulin nhẹ để tăng đường cho thai", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nếu insulin sản xuất thêm không đủ, sẽ dẫn đến tiểu đường thai kỳ", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 64 | Chunk 4 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"tất cả phụ nữ mang thai đều được kiểm tra tiểu đường thai kỳ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"thường từ tuần 24–28", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (rf1:RiskFactor {name:"có thể sớm hơn nếu có nguy cơ", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (app2:Application {name:"xét nghiệm máu đo glucose hoặc hỏi tiền sử", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

// ===== Article 64 | Chunk 5 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đa số tiểu đường thai kỳ biến mất sau sinh nhưng làm tăng nguy cơ tiểu đường sau này", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"nếu có sẵn tiểu đường nhẹ trước mang thai thì sẽ kéo dài suốt đời", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 64 | Chunk 6 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"phụ nữ trên 25 tuổi", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"thừa cân", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)
MERGE (rf2)-[:CONTEXT]->(tk)

MERGE (rf3:RiskFactor {name:"từng bị tiểu đường thai kỳ", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)
MERGE (rf3)-[:CONTEXT]->(tk)

MERGE (rf4:RiskFactor {name:"đã sinh con rất lớn", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)
MERGE (rf4)-[:CONTEXT]->(tk)

MERGE (rf5:RiskFactor {name:"có người thân bị tiểu đường", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf5)
MERGE (rf5)-[:CONTEXT]->(tk)

MERGE (rf6:RiskFactor {name:"từng thai chết lưu", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf6)
MERGE (rf6)-[:CONTEXT]->(tk)

MERGE (rf7:RiskFactor {name:"thuộc nhóm chủng tộc nguy cơ cao", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf7)
MERGE (rf7)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 7 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"làm tăng nguy cơ sinh con rất lớn (macrosomia)", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"tăng nguy cơ cao huyết áp", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"tăng nguy cơ tiền sản giật", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"dễ phải mổ lấy thai", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 8 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ có thể gặp vấn đề hô hấp", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"trẻ có thể gặp hạ đường huyết", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"trẻ có thể gặp vàng da", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (a1:Advice {name:"kiểm soát đường huyết tốt sẽ giảm nguy cơ này", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 64 | Chunk 9 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"mẹ có nguy cơ cao mắc tiểu đường sau này", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"con cũng tăng nguy cơ tiểu đường hoặc béo phì", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần theo dõi sức khỏe", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 64 | Chunk 10 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"theo dõi đường máu hàng ngày", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"ăn uống lành mạnh", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"tập thể dục thường xuyên", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"đôi khi cần thuốc", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

// ===== Article 64 | Chunk 11 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đa số kiểm soát bằng chế độ ăn và tập luyện", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"nếu không đủ sẽ dùng thuốc hoặc insulin để giữ đường máu ổn định", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 64 | Chunk 12 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"phần lớn vẫn có thể sinh thường, nhưng nguy cơ mổ lấy thai cao hơn", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (a1:Advice {name:"có thể cần kích thích sinh sớm để tránh biến chứng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 64 | Chunk 13 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cần xét nghiệm lại đường huyết 6–12 tuần sau sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bình thường, kiểm tra định kỳ mỗi 3 năm", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"con cũng cần được theo dõi yếu tố nguy cơ tiểu đường trong quá trình lớn lên", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 65 | Chunk 1 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"bệnh tiểu đường xảy ra khi insulin không đủ hoặc cơ thể kháng insulin", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"glucose không vào tế bào mà tích tụ trong máu, gây tăng đường huyết và hại cơ thể", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"insulin không đủ", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"cơ thể kháng insulin", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đây là bệnh tiểu đường tiền thai kỳ nếu có trước khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 65 | Chunk 2 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (comp1:Complication {name:"biến chứng tim", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (comp2:Complication {name:"biến chứng thận", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (comp3:Complication {name:"nhiều vấn đề sức khỏe nghiêm trọng", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

// ===== Article 65 | Chunk 3 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"dị tật bẩm sinh", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"cao huyết áp", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"đa ối", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"thai to", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"sinh non", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"mổ lấy thai khó khăn", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

// ===== Article 65 | Chunk 4 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"trẻ sinh từ mẹ tiểu đường tiền thai kỳ có thể bị hô hấp kém", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"trẻ sinh từ mẹ tiểu đường tiền thai kỳ có thể bị hạ đường huyết", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"trẻ sinh từ mẹ tiểu đường tiền thai kỳ có thể bị vàng da", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (det1:Detail {name:"đa số trẻ khỏe sau sinh nhưng một số cần chăm sóc đặc biệt", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 65 | Chunk 5 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ tiểu đường nên nói với bác sĩ trước khi mang thai để kiểm soát đường huyết", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"nồng độ đường cao sớm có thể gây dị tật khi cơ quan bé phát triển trong 8 tuần đầu", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 65 | Chunk 6 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn uống đúng cách", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"dùng thuốc theo chỉ định", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"khám thai thường xuyên", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 65 | Chunk 7 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"mức độ kiểm soát đường máu được đánh giá bằng xét nghiệm HbA1C, phản ánh nồng độ đường trung bình trong 4–6 tuần qua", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 65 | Chunk 8 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"chóng mặt", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"run", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"đói đột ngột", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"vã mồ hôi", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"yếu", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

MERGE (a1:Advice {name:"gia đình cần biết cách xử trí", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"bỏ bữa", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"ăn ít", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"tập quá sức", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 65 | Chunk 9 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân bằng rất quan trọng để nuôi thai và duy trì đường huyết ổn định", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"ăn uống không đúng có thể làm đường máu quá cao", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"ăn uống không đúng có thể làm đường máu quá thấp", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 65 | Chunk 10 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục giúp kiểm soát đường huyết", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục giúp kiểm soát cân nặng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tập thể dục tăng năng lượng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tập thể dục cải thiện giấc ngủ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tập thể dục giảm đau lưng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tập thể dục giảm táo bón", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tập thể dục giảm đầy hơi", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 65 | Chunk 11 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"trong thai kỳ, liều insulin thường phải tăng", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (det1:Detail {name:"insulin an toàn, không gây dị tật", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (t2:Treatment {name:"người dùng bơm insulin thường có thể tiếp tục, nhưng đôi khi cần chuyển sang tiêm", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 65 | Chunk 12 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"nếu đang dùng thuốc uống, bác sĩ có thể đổi liều hoặc chuyển sang insulin để an toàn trong thai kỳ", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 65 | Chunk 13 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đường huyết được theo dõi chặt chẽ (thường mỗi giờ)", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"có thể dùng insulin tĩnh mạch", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"người dùng bơm insulin có thể tiếp tục trong quá trình này", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

// ===== Article 65 | Chunk 14 | Tiểu đường tiền thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ tiểu đường có thể cho con bú", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"sữa mẹ tốt cho bé", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"cho con bú giúp mẹ giảm cân sau sinh", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"cho con bú giúp tử cung hồi phục nhanh hơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 66 | Chunk 1 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thời gian tốt nhất để đi du lịch có lẽ là giữa thai kỳ của bạn, trong khoảng tuần thứ 14 đến tuần thứ 28", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"hầu hết các trường hợp cấp cứu sản khoa phổ biến thường xảy ra trong quý I và quý II", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"sau 28 tuần, bạn sẽ cảm thấy di chuyển khó khăn hơn hoặc khó ngồi được lâu ở một tư thế", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 66 | Chunk 2 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trong suốt chuyến đi, mỗi ngày hãy chỉ lái xe trong thời gian ngắn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cố gắng hạn chế lái xe không quá 5 hoặc 6 giờ mỗi ngày", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"phải chắc chắn đeo dây an toàn khi ngồi vào xe, ngay cả khi xe của bạn có túi khí", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"có kế hoạch dừng xe thường xuyên để cử động và duỗi thẳng chân", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 66 | Chunk 3 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"lưu ý khi đi máy bay", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"một số hãng hàng không nội địa hạn chế phụ nữ mang thai đi lại bằng máy bay trong tháng cuối của thai kỳ hoặc yêu cầu phải có giấy chứng nhận y tế", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"một số hãng khác thì không khuyến khích bay đối với phụ nữ mang thai trên 36 tuần", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"nếu bạn đang định bay quốc tế, thì các hãng hàng không quốc tế thường yêu cầu ngừng bay sớm hơn mốc này", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 66 | Chunk 4 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu có thể, hãy chọn chỗ ngồi ngay lối đi, như thế bạn sẽ dễ dàng đứng dậy và duỗi thẳng chân trong khi bay", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh các loại thực phẩm và đồ uống có ga trước khi bay", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"đeo dây an toàn trong suốt chuyến bay. dây an toàn nên được thắt thấp trên xương hông, dưới bụng của bạn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu bạn dễ bị buồn nôn, bác sĩ có thể kê toa thuốc chống buồn nôn cho bạn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 66 | Chunk 5 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"để đề phòng, bạn hãy hỏi bác sĩ xem những loại thuốc nào an toàn để bạn có thể mang theo phòng khi bị say sóng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"những vòng băng đeo chống say sóng có thể giúp ích cho một số người, mặc dù có rất ít bằng chứng khoa học về hiệu quả của chúng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"những vòng băng này hoạt động trên nguyên tắc bấm huyệt để giúp phòng tránh rối loạn dạ dày", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 66 | Chunk 6 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nhiễm norovirus", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (s1:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"nôn mửa nhiều trong 1 hoặc 2 ngày", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (c2:Cause {name:"ăn phải thức ăn, uống nước bị nhiễm hoặc chạm phải những chỗ có vi rút", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (a1:Advice {name:"kiểm tra xem tàu của bạn đã được kiểm tra về độ an toàn và sức khỏe bởi cơ quan y tế liên quan chưa", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 66 | Chunk 7 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn đang có kế hoạch đi nước ngoài trong khi mang thai, hãy hỏi bác sĩ của bạn để được tư vấn có nên đi hay không, cũng như các bước cần thực hiện trước chuyến đi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bạn cũng có thể tham khảo thông tin của Trung tâm phòng chống và kiểm soát bệnh tật (CDC: Centers for Disease Control and Prevention) về các cảnh báo, lời khuyên cho chuyến đi an toàn cũng như cập nhật các loại vắc xin cần thiết trước khi nhập cảnh ở nhiều quốc gia khác nhau", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"trong thai kỳ, bạn không nên đi du lịch đến những khu vực có nguy cơ mắc bệnh sốt rét như ở châu Phi, Trung và Nam Mỹ, châu Á", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 66 | Chunk 8 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"khi đi du lịch ra nước ngoài, hãy thực hiện những điều sau", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"loại nước an toàn nhất để uống là nước máy đã được đun sôi trong 1 phút (3 phút nếu ở độ cao hơn 1829m)", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"nước đóng chai an toàn hơn nước máy chưa đun sôi, nhưng vì không có tiêu chuẩn cho nước uống đóng chai, nên không có gì đảm bảo rằng nó không chứa các vi trùng có thể gây bệnh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"đồ uống có ga và đồ uống chế biến từ nước đun sôi là loại nước an toàn để uống", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

// ===== Article 66 | Chunk 9 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không cho nước đá làm từ nước chưa đun sôi vào nước uống của bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"không uống từ cốc được rửa bằng nước chưa đun sôi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh các loại trái cây tươi và rau quả, trừ khi chúng đã được nấu chín hoặc tự tay bạn đã bóc vỏ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"không ăn thịt hoặc cá sống, chưa được nấu chín", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 66 | Chunk 10 | Du lịch trong thai kỳ =====
MERGE (s:Topic {name:"Du lịch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn đang đi du lịch trong nội địa, hãy xác định vị trí các bệnh viện gần nhất hoặc phòng khám y tế ở nơi bạn đang định tới", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bạn định đi du lịch nước ngoài, Hiệp hội quốc tế về hỗ trợ y tế cho du khách (IAMAT) có một danh mục các bác sĩ trên toàn thế giới", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"các bác sĩ ở nước bạn sắp tới có thể không nói được tiếng Anh, do đó hãy mang theo một cuốn từ điển", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"một lời khuyên nữa cho bạn là có thể đăng ký với đại sứ quán hoặc lãnh sự quán của bạn tại nơi đó sau khi bạn đến nơi", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"các cơ quan này có thể hữu ích nếu bạn cần phải về nước ngay trong trường hợp khẩn cấp", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 71 | Chunk 1 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"việc trao đổi thẳng thắn là yếu tố quan trọng để đảm bảo hài lòng và an toàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"quan hệ tình dục trong khi mang thai ít được đề cập nhưng là vấn đề nhiều cặp đôi quan tâm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 71 | Chunk 2 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"quan hệ tình dục thường an toàn trong mọi giai đoạn của thai kỳ bình thường", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"mang thai bình thường nghĩa là không có nguy cơ sẩy thai hoặc sinh non", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nếu không chắc chắn, nên hỏi ý kiến bác sĩ hoặc nhân viên y tế", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 71 | Chunk 3 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ham muốn tình dục thay đổi trong thai kỳ: có thể giảm hoặc tăng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhiều phụ nữ thấy khó chịu do thay đổi cơ thể", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nên trao đổi với bạn tình về những cách gần gũi khác như hôn, âu yếm, thay đổi tư thế", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 71 | Chunk 4 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ở giai đoạn cuối thai kỳ, nhiều phụ nữ mất hứng thú do bận rộn chuẩn bị sinh nở và lo lắng. đây là điều bình thường.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 71 | Chunk 5 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"quan hệ tình dục không an toàn trong hai trường hợp", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"quan hệ bằng miệng có thể vô tình thổi khí vào âm đạo gây tắc mạch khí, nguy hiểm cho mẹ và thai nhi", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"quan hệ với bạn tình có nguy cơ mắc bệnh lây qua đường tình dục (STD) như herpes, sùi mào gà, giang mai, HIV", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

// ===== Article 71 | Chunk 6 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nhân viên y tế có thể khuyên ngừng quan hệ khi có các nguy cơ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (rf1:RiskFactor {name:"tiền sử/dọa sẩy thai", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"sinh non", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"ra máu hoặc dịch âm đạo bất thường", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

MERGE (rf4:RiskFactor {name:"rỉ ối", layer:"RiskFactor"})
MERGE (rf4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)

MERGE (rf5:RiskFactor {name:"nhau tiền đạo", layer:"RiskFactor"})
MERGE (rf5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf5)

MERGE (rf6:RiskFactor {name:"cổ tử cung bất toàn", layer:"RiskFactor"})
MERGE (rf6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf6)

MERGE (rf7:RiskFactor {name:"mang đa thai", layer:"RiskFactor"})
MERGE (rf7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf7)

// ===== Article 71 | Chunk 7 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"quan hệ tình dục không ảnh hưởng trực tiếp tới thai nhi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"thai nhi được bảo vệ bởi màng ối, thành tử cung và nút nhầy cổ tử cung", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"dương vật không tiếp xúc được với thai nhi", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 71 | Chunk 8 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"quan hệ hoặc đạt khoái cảm không gây sẩy thai trong thai kỳ bình thường", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"cơn co khi đạt cực khoái khác với cơn co khi chuyển dạ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"tuy nhiên, tinh dịch chứa chất có thể kích thích co bóp, do đó một số bác sĩ khuyên tránh quan hệ ở cuối thai kỳ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 71 | Chunk 9 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ham muốn tình dục thay đổi là bình thường", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"mệt mỏi", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"vú mềm", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"tiểu nhiều", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trong 3 tháng đầu có thể giảm ham muốn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"ở 3 tháng giữa, nhu cầu có thể tăng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"ở 3 tháng cuối, nhu cầu lại giảm do tử cung lớn và lo lắng trước sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

// ===== Article 71 | Chunk 10 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trao đổi thẳng thắn là cách tốt nhất để duy trì quan hệ tình cảm và tình dục", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"bạn tình/chồng có thể khó chấp nhận vai trò mới của người phụ nữ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 71 | Chunk 11 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên gọi bác sĩ nếu không chắc chắn về sự an toàn hoặc khi có dấu hiệu bất thường sau quan hệ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (s2:Symptom {name:"đau đớn", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"chảy máu", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"ra dịch", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"co thắt kéo dài", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

// ===== Article 71 | Chunk 12 | Quan hệ tình dục khi thai kỳ =====
MERGE (s:Topic {name:"Quan hệ tình dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cặp đôi nên trao đổi để tìm cách phù hợp cho cả hai trong thời gian mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"khái niệm 'bình thường' chỉ mang tính tương đối", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 79 | Chunk 1 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ra máu trong thai kỳ, bao gồm cả thấm giọt, có thể do nhiều nguyên nhân", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"ra máu có thể xảy ra sớm hoặc muộn, không phải trường hợp nào cũng nghiêm trọng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 79 | Chunk 2 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"quan hệ tình dục", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"viêm cổ tử cung", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (s1:Symptom {name:"ra máu nhẹ", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (det1:Detail {name:"thường ra máu nhẹ tự cầm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 79 | Chunk 3 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"dấu hiệu sinh non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"dấu hiệu sẩy thai", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

// ===== Article 79 | Chunk 4 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi có ra máu sớm thai kỳ, bác sĩ sẽ hỏi tình trạng, mức độ, tần suất ra máu và triệu chứng kèm theo như đau, vị trí và mức độ đau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 79 | Chunk 5 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm máu định lượng hCG, có thể lặp lại nhiều lần", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"xét nghiệm nhóm máu Rh nếu có bất đồng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"siêu âm có thể được dùng để tìm nguyên nhân", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

// ===== Article 79 | Chunk 13 | Ra máu cuối thai kỳ =====
MERGE (s:Topic {name:"Ra máu", layer:"Topic"})
MERGE (tk:Topic {name:"Cuối thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chảy máu nhẹ thường do viêm hoặc lộ tuyến cổ tử cung", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"điều trị nội khoa", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"chảy máu nặng thường do bất thường bánh rau", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"rau bong non", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"rau tiền đạo", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (c4:Cause {name:"chuyển dạ sinh non cũng có thể gây ra máu", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c4)
MERGE (c4)-[:CONTEXT]->(tk)

// ===== Article 79 | Chunk 16 | Ra máu âm đạo trong thai kỳ =====
MERGE (s:Topic {name:"Ra máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cuối thai kỳ, ra máu có thể là dấu hiệu chuyển dạ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"ra ít chất nhầy lẫn máu (chất nhầy hồng âm đạo)", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"bình thường nếu trong vòng 3 tuần quanh ngày sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"nếu sớm hơn, có thể là sinh non", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 81 | Chunk 6 | Cao huyết áp thai kỳ =====
MERGE (s:Disease {name:"Cao huyết áp", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"Huyết áp tăng khi mang thai nhưng không có protein niệu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"Có thể tiến triển thành tiền sản giật giai đoạn cuối", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 82 | Chunk 1 | Đai an toàn khi thai kỳ =====
MERGE (s:Topic {name:"Đai an toàn", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai nên luôn luôn cài đai an toàn để bảo vệ mẹ và bé khỏi thương tích hoặc tử vong trong trường hợp tai nạn xe hơi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"dù ngồi ở hàng trước hay sau đều cần cài đai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 82 | Chunk 2 | Đai an toàn khi thai kỳ =====
MERGE (s:Topic {name:"Đai an toàn", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đai an toàn nên là loại 3 điểm: một dây qua hông và một dây qua vai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"dây hông đặt dưới bụng, cao trên đùi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"dây vai đi giữa ngực và lệch sang bên bụng, không bao giờ đặt trực tiếp qua bụng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"đai phải đeo vừa khít và điều chỉnh theo chiều cao", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 82 | Chunk 3 | Túi khí khi thai kỳ =====
MERGE (s:Topic {name:"Túi khí", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"túi khí an toàn cho phụ nữ mang thai, giúp bảo vệ đầu khi xảy ra va chạm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"không nên tắt túi khí", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"để an toàn, ghế nên được kéo ra sau và tạo khoảng cách giữa bụng và vô lăng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"túi khí không thay thế được đai an toàn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 82 | Chunk 4 | Vị trí ngồi khi thai kỳ =====
MERGE (s:Topic {name:"Vị trí ngồi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"vị trí ngồi không ảnh hưởng trực tiếp đến an toàn thai nhi, nhưng hàng ghế sau thường ít chấn thương hơn khi tai nạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"luôn cài đai an toàn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 82 | Chunk 5 | Tai nạn xe hơi khi thai kỳ =====
MERGE (s:Topic {name:"Tai nạn xe hơi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu thai phụ bị tai nạn xe hơi, cần được chăm sóc ngay lập tức, ngay cả khi không có dấu hiệu chấn thương", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"hầu hết tổn thương thai nhi xảy ra vài giờ sau tai nạn", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (rf1:RiskFactor {name:"đặc biệt cần kiểm tra ngay nếu thai phụ mang thai trên 6 tháng", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

// ===== Article 82 | Chunk 6 | Tai nạn xe hơi khi thai kỳ =====
MERGE (s:Topic {name:"Tai nạn xe hơi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đau bụng", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"rò dịch âm đạo", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"xuất hiện cơn co thắt tử cung", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (a1:Advice {name:"cần gọi bác sĩ ngay lập tức", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)



// ===== Article 93 | Chunk 8 | Tiểu đường trong thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"nguy cơ sinh con dị tật bẩm sinh cao hơn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"nguy cơ do huyết áp cao tăng lên", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (comp3:Complication {name:"sẩy thai", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp3)
MERGE (comp3)-[:CONTEXT]->(tk)

MERGE (comp4:Complication {name:"hội chứng trẻ sơ sinh khổng lồ, tình trạng khi bào thai phát triển quá lớn", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp4)
MERGE (comp4)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 1 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"rạn da là những vết nhỏ, dài và lõm trên da", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"da bị kéo căng quá mức", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tăng cân nhanh", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"bụng và ngực phát triển", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"ban đầu vết rạn có thể màu hồng, đỏ, tím hoặc nâu sẫm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"vết rạn sẽ mờ dần theo thời gian", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 2 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi nội tiết tố thai kỳ ảnh hưởng đến lớp giữa của da, làm suy yếu liên kết với các lớp khác và tạo ra các vết rạn", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nội tiết tố cũng làm mềm cấu trúc da khiến rạn dễ hình thành", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 138 | Chunk 3 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vết rạn thường xuất hiện cuối quý 2 hoặc đầu quý 3 khi bụng phát triển nhanh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"có thể xuất hiện ở bụng, ngực, mông, hông, đùi hoặc cánh tay", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"mỗi lần mang thai có thể khác nhau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 4 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"tăng cân nhanh", layer:"RiskFactor"})
MERGE (rf1)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"mang song thai hoặc đa thai", layer:"RiskFactor"})
MERGE (rf2)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf2)-[:CONTEXT]->(tk)

MERGE (rf3:RiskFactor {name:"thai lớn", layer:"RiskFactor"})
MERGE (rf3)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf3)-[:CONTEXT]->(tk)

MERGE (rf4:RiskFactor {name:"đa ối", layer:"RiskFactor"})
MERGE (rf4)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf4)-[:CONTEXT]->(tk)

MERGE (rf5:RiskFactor {name:"tiền sử gia đình có rạn da", layer:"RiskFactor"})
MERGE (rf5)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf5)-[:CONTEXT]->(tk)

MERGE (rf6:RiskFactor {name:"mang thai ở tuổi trẻ (đặc biệt vị thành niên)", layer:"RiskFactor"})
MERGE (rf6)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf6)-[:CONTEXT]->(tk)

MERGE (rf7:RiskFactor {name:"đã từng có rạn trước mang thai", layer:"RiskFactor"})
MERGE (rf7)-[:HAS_RISK_FACTOR]->(s)
MERGE (rf7)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 5 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"quản lý cân nặng", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr1)
MERGE (pr1)-[:CONTEXT]->(tk)

MERGE (pr2:Prevention {name:"uống nhiều nước", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr2)
MERGE (pr2)-[:CONTEXT]->(tk)

MERGE (pr3:Prevention {name:"tránh thực phẩm nhiều dầu mỡ, muối, chế biến sẵn", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr3)
MERGE (pr3)-[:CONTEXT]->(tk)

MERGE (pr4:Prevention {name:"tập thể dục thường xuyên", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr4)
MERGE (pr4)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 6 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"dầu và kem dưỡng da: không có hiệu quả ngăn ngừa hay chữa rạn da do chỉ tác động lớp ngoài", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"một số loại (dầu ô liu, dầu dừa, bơ ca cao, lô hội...) giúp giảm ngứa, dưỡng ẩm, hỗ trợ thư giãn nhưng không ngăn rạn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 7 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"Vitamin E (bôi ngoài da hoặc trong kem dưỡng) có thể giúp nuôi dưỡng da", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"Viên uống vitamin E có thể không an toàn", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"Liệu pháp xoa bóp với tinh dầu (dầu hoa cam, dầu mầm lúa mì) có thể giúp cải thiện tâm trạng và làm dịu da", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

// ===== Article 138 | Chunk 8 | Rạn da trong thai kỳ =====
MERGE (s:Topic {name:"Rạn da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nhiều bà mẹ xem rạn da như biểu tượng của thai kỳ, điều này giúp giảm lo lắng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"vết rạn là vĩnh viễn nhưng thường mờ dần sau khoảng 1 năm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (t1:Treatment {name:"có thể điều trị bằng laser hoặc phương pháp y khoa nếu muốn cải thiện thêm", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

// ===== Article 139 | Chunk 1 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục an toàn cho cả mẹ và thai nhi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ngay cả khi trước đó không có thói quen tập thể dục, phụ nữ mang thai vẫn nên duy trì hoạt động thể chất phù hợp, dưới sự tham khảo ý kiến bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 139 | Chunk 2 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thay đổi thể chất ảnh hưởng: dây chằng và khớp lỏng lẻo", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"tim đập nhanh hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"hạ huyết áp gây chóng mặt", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"bụng to làm thay đổi trọng tâm dễ ngã", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

// ===== Article 139 | Chunk 3 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu xuất hiện đau đầu, tim loạn nhịp, đau ngực, chóng mặt, chảy máu âm đạo, hụt hơi, yếu cơ, đau lưng sâu, đau xương mu hoặc vùng chậu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 139 | Chunk 4 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các bài tập cần tránh: gập bụng/ngồi dậy", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"các bài tập cần tránh: đẩy tạ qua đầu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"các bài tập cần tránh: tập luyện ngắt quãng cường độ cao", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"các bài tập cần tránh: thể thao va chạm", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"các bài tập cần tránh: nằm ngửa (tam cá nguyệt 2–3)", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"các bài tập cần tránh: squat sumo sâu và nâng tạ sumo", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"các bài tập cần tránh: hot yoga", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"các bài tập cần tránh: nâng tạ", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"các bài tập cần tránh: lặn", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"các bài tập cần tránh: aerobic cường độ cao", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"các bài tập cần tránh: nằm sấp", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

MERGE (a12:Advice {name:"các bài tập cần tránh: gập lưng", layer:"Advice"})
MERGE (a12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a12)

MERGE (a13:Advice {name:"các bài tập cần tránh: thái cực quyền", layer:"Advice"})
MERGE (a13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a13)

MERGE (a14:Advice {name:"các bài tập cần tránh: động tác kéo dãn khớp quá mức", layer:"Advice"})
MERGE (a14)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a14)

// ===== Article 139 | Chunk 5 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"giảm khó chịu trong thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"giảm đau lưng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tăng cường cơ bụng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"cải thiện lưu thông máu", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"nâng cao năng lượng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"cải thiện tim mạch", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"hỗ trợ giấc ngủ", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"giảm căng thẳng", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"tăng sự tự tin", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"chuẩn bị sinh nở dễ dàng hơn", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"giảm nguy cơ đái tháo đường thai kỳ", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

MERGE (a12:Advice {name:"hỗ trợ lấy lại cân nặng sau sinh", layer:"Advice"})
MERGE (a12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a12)

// ===== Article 139 | Chunk 6 | Tập thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hỏi ý kiến bác sĩ nếu có bệnh lý tim mạch, huyết áp cao, nhau thai thấp, tiền sử sinh non, cổ tử cung yếu hoặc ra máu kéo dài", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thực hiện hoạt động nhẹ nhàng, có hướng dẫn chuyên nghiệp, khởi động kỹ, tránh bắt đầu với bài tập khó, tạm dừng thể thao cường độ cao cho đến sau sinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 140 | Chunk 1 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ là một hoạt động thể chất an toàn, giúp thai phụ giảm biến chứng thai kỳ liên quan đến tăng cân và ít vận động", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"phụ nữ có thai kỳ nguy cơ thấp được khuyến khích đi bộ hoặc tập thể dục nhịp điệu vừa phải 150 phút/tuần", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 140 | Chunk 2 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"giảm đau lưng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"giảm táo bón", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"giảm nhu cầu sinh mổ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"giảm nguy cơ tiểu đường thai kỳ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

MERGE (a5:Advice {name:"giảm nguy cơ tiền sản giật", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a5)
MERGE (a5)-[:CONTEXT]->(tk)

MERGE (a6:Advice {name:"kiểm soát cân nặng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a6)
MERGE (a6)-[:CONTEXT]->(tk)

MERGE (a7:Advice {name:"giảm nguy cơ cục máu đông", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a7)
MERGE (a7)-[:CONTEXT]->(tk)

MERGE (a8:Advice {name:"hỗ trợ giảm cân sau sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a8)
MERGE (a8)-[:CONTEXT]->(tk)

// ===== Article 140 | Chunk 3 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên đi bộ 30 phút/ngày hoặc 15 phút 2 lần/ngày, 5 ngày/tuần", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"đi bộ nhanh hoặc đi bộ lên dốc được coi là hoạt động vừa phải", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 140 | Chunk 4 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tam cá nguyệt 1: người mới bắt đầu nên đi bộ 10–15 phút cách ngày và tăng dần", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"mức trung bình 20–30 phút mỗi ngày, 4–5 ngày/tuần", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"mức nâng cao duy trì 20–30 phút, 5–6 ngày/tuần, tránh tập vượt quá RPE 7", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 140 | Chunk 5 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chú ý tư thế để tránh căng lưng, nên thẳng lưng và vung tay giữ thăng bằng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"mang giày thoải mái, có thể dùng băng quấn bụng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"sau khi đi bộ nên nghỉ ngơi và kê cao chân", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (det1:Detail {name:"tam cá nguyệt 2", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 140 | Chunk 6 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tiếp tục đi bộ ngắn hàng ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh đường dốc hoặc không bằng phẳng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"có thể dùng đai nịt bụng để nâng đỡ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nên đi cùng người thân gần ngày dự sinh", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 140 | Chunk 7 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chọn giày thoải mái", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bảo vệ da bằng kem chống nắng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống đủ nước", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"ăn nhẹ trước khi đi bộ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"chọn nơi đi bộ phù hợp (trong nhà, trung tâm thương mại, buổi sáng ngoài trời)", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 140 | Chunk 8 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cần đi chậm lại hoặc dừng khi kiệt sức, khó thở, đau cơ hoặc khớp", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cần ngưng ngay và liên hệ bác sĩ nếu có chảy máu âm đạo, chóng mặt, tức ngực, sưng đau bắp chân, cơn co tử cung hoặc đau dữ dội bụng/chậu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 140 | Chunk 9 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ có thể gây chuyển dạ ở thai kỳ nguy cơ cao", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đi bộ có thể tăng cơ hội sinh thường", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nhưng đi quá nhiều có thể gây mệt", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"đi bộ máy chạy bộ an toàn nếu cài đặt tốc độ hợp lý, khởi động và kéo giãn trước khi tập", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 140 | Chunk 10 | Đi bộ khi thai kỳ =====
MERGE (s:Topic {name:"Đi bộ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"giúp ngăn tăng cân quá mức", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"giảm nguy cơ tiền sản giật", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"giảm nguy cơ tiểu đường thai kỳ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"giúp thai nhi có cân nặng phù hợp", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"đi bộ cùng gia đình hoặc nhóm bạn giúp tạo động lực và tâm trạng tích cực", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 141 | Chunk 1 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"chàm thai kỳ (atopic eruption of pregnancy – AEP) là một dạng chàm xuất hiện trong giai đoạn mang thai", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"có thể xảy ra ở phụ nữ có tiền sử chàm", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"khởi phát lần đầu khi mang thai", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"còn được gọi là phát ban cơ địa thai kỳ, sẩn ngứa da thai kỳ, sẩn ngứa nang lông thai kỳ, viêm da dạng sẩn thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 141 | Chunk 2 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đây là bệnh da phổ biến nhất khởi phát trong thai kỳ, chiếm gần 50% số ca chàm", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (c1:Cause {name:"có thể liên quan đến miễn dịch và rối loạn tự miễn", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (rf1:RiskFactor {name:"người từng bị chàm dễ bùng phát mạnh hơn khi mang thai", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"có thể đi kèm với hen suyễn hoặc sốt cỏ hoa", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

// ===== Article 141 | Chunk 3 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"các vết sẩn đỏ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"khô ráp", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"ngứa", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"bong vảy", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"có thể thành mụn mủ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"xuất hiện ở nhiều vị trí", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s6)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"có xu hướng kết cụm", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s7)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"khoảng ¼ thai phụ có cải thiện triệu chứng, nhưng đa số nặng hơn khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 141 | Chunk 4 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"20–40% thai phụ mắc chàm thai kỳ có tiền sử chàm", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"Bệnh có thể khởi phát lần đầu trong thai kỳ", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"Bệnh có thể tái phát", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

// ===== Article 141 | Chunk 5 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (c1:Cause {name:"chưa rõ, nhưng yếu tố môi trường và di truyền đóng vai trò quan trọng", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 141 | Chunk 6 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (app1:Application {name:"chẩn đoán: chủ yếu dựa vào thăm khám da lâm sàng", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app2:Application {name:"đôi khi sinh thiết da để xác nhận", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (det1:Detail {name:"bác sĩ hỏi về thời điểm xuất hiện", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det2:Detail {name:"thay đổi thói quen/lối sống", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det3:Detail {name:"triệu chứng gây ảnh hưởng", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det4:Detail {name:"yếu tố tăng/giảm triệu chứng", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det5:Detail {name:"thuốc đã dùng", layer:"Detail"})
MERGE (det5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det5)

// ===== Article 141 | Chunk 7 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đa số kiểm soát bằng kem dưỡng ẩm hoặc thuốc mỡ", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"trường hợp nặng có thể dùng steroid bôi tại chỗ (an toàn trong thai kỳ)", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"liệu pháp tia UV có hiệu quả", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (a1:Advice {name:"tránh methotrexate và PUVA vì gây hại cho thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 141 | Chunk 8 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"tắm nước ấm", layer:"Prevention"})
MERGE (pr1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr1)

MERGE (pr2:Prevention {name:"bôi kem dưỡng ẩm ngay sau tắm", layer:"Prevention"})
MERGE (pr2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr2)

MERGE (pr3:Prevention {name:"mặc quần áo cotton thoáng mát", layer:"Prevention"})
MERGE (pr3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr3)

MERGE (pr4:Prevention {name:"tránh len/gai", layer:"Prevention"})
MERGE (pr4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr4)

MERGE (pr5:Prevention {name:"tránh xà phòng thô ráp", layer:"Prevention"})
MERGE (pr5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr5)

MERGE (pr6:Prevention {name:"dùng máy tạo ẩm", layer:"Prevention"})
MERGE (pr6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr6)

MERGE (pr7:Prevention {name:"uống đủ nước", layer:"Prevention"})
MERGE (pr7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr7)

// ===== Article 141 | Chunk 9 | Bệnh chàm thai kỳ =====
MERGE (s:Disease {name:"Bệnh chàm", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thường không gây hại cho mẹ và thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đa số tự hết sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"có thể tái diễn sau sinh hoặc ở lần mang thai sau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"không ảnh hưởng đến sinh sản và không gây biến chứng lâu dài", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

// ===== Article 142 | Chunk 1 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"giúp tăng nhịp tim", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"tăng lực cơ thân dưới", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"làm săn chắc cơ thể", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"hỗ trợ sinh nở", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

// ===== Article 142 | Chunk 2 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"Squats khi mang thai có an toàn không? Có, miễn là không tập quá sức và tham khảo ý kiến bác sĩ.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 142 | Chunk 3 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"săn chắc cơ mông", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"giảm đau lưng dưới", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ngăn ngừa táo bón", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tư thế sinh tốt hơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tăng sức cho cơ chân", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tăng sức cơ sàn chậu", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"duy trì trọng tâm cơ thể", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 142 | Chunk 4 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đứng hai chân rộng bằng vai, hạ thấp người tư thế ngồi xổm, mở tay đặt lên đầu gối để tạo khoảng trống cho bụng, giữ thăng bằng, giữ tư thế đến khi thoải mái", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 142 | Chunk 5 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sumo squats: đứng rộng hơn vai, ngón chân hướng ra ngoài, hạ người xuống, không để gối hướng vào nhau, ép mông lên để đứng dậy, lặp lại 10–15 lần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 142 | Chunk 6 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"cầm tạ, đứng thẳng, mở chân bằng vai, hạ người xuống giữ lưng thẳng, gối thẳng hàng ngón chân, nâng cơ mông để đứng lên, lặp lại 10–15 lần", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 142 | Chunk 7 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đặt chân trái lên hộp, đứng lên, đưa chân phải lên, bước xuống và đổi bên", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"tăng sức mạnh hông, mông, đùi trước, lưng dưới", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 142 | Chunk 8 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"squat sâu kết hợp kegel: đứng đối diện tường, hạ sâu người, giữ thăng bằng, ép cơ vùng xương chậu như ngăn dòng tiểu, giữ 10 giây, lặp lại 5 lần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 142 | Chunk 9 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"đặt bóng giữa lưng dưới và tường, mở chân bằng vai, hạ người xuống thoải mái, giữ gối 90 độ, đứng lên, lặp lại 10–15 lần", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 142 | Chunk 10 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"squat với ghế: ngồi xuống ghế vài giây, đứng lên bằng cơ mông, có thể tăng dần thời gian ngồi 15–60 giây, lặp lại 10–15 lần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 142 | Chunk 11 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"những thay đổi trong thai kỳ ảnh hưởng đến squats", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"bụng to làm thay đổi trọng tâm", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"hormone làm giãn dây chằng", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (rf1:RiskFactor {name:"tăng nguy cơ chấn thương", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

// ===== Article 142 | Chunk 12 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"điều chỉnh cường độ theo giai đoạn thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có người hỗ trợ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống đủ nước", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"mặc quần áo và giày phù hợp", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tập ở nơi bằng phẳng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"không tập quá sức", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tránh squats ngay sau ăn hoặc khi đói", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 142 | Chunk 13 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các trường hợp cần tránh squats: thai nhi không thuận sau 30 tuần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"các trường hợp cần tránh squats: đau khi tập", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"các trường hợp cần tránh squats: nhau tiền đạo", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"các trường hợp cần tránh squats: nguy cơ sinh non", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"các trường hợp cần tránh squats: đa thai", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"các trường hợp cần tránh squats: cổ tử cung ngắn", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 142 | Chunk 14 | Squats khi thai kỳ =====
MERGE (s:Topic {name:"Squats", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"giúp mở khung chậu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"tăng cơ quanh tử cung", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"tạo không gian cho thai nhi xuống", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"giúp cổ tử cung giãn", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"phụ nữ sinh ở tư thế squats ít cần dụng cụ hỗ trợ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"giảm rách tầng sinh môn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 143 | Chunk 1 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"rụng tóc sau sinh (postpartum alopecia) thường xảy ra 2–4 tháng sau sinh, có thể kéo dài 24 tuần, hiếm khi quá 15 tháng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"tóc thường rụng nhiều ở đỉnh đầu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"tóc thường rụng ít hơn ở hai bên", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"tóc thường rụng ít hơn ở sau gáy", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

// ===== Article 143 | Chunk 2 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"sau sinh, nồng độ estrogen giảm trở lại bình thường → nhiều nang tóc bước vào giai đoạn nghỉ (telogen) → tóc rụng nhiều", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"thiếu hụt dinh dưỡng (kẽm, sắt, vitamin D, niacin, axit béo thiết yếu) cũng góp phần làm tóc rụng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 143 | Chunk 3 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"tóc mỏng", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"rụng nhiều bất thường", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"rụng theo mảng", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"rụng nhiều hơn ở đỉnh đầu", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"tình trạng này thường tự hồi phục trong 6–12 tháng sau sinh", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 143 | Chunk 4 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sử dụng dầu gội làm dày tóc", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chọn dầu xả cho tóc mỏng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"chỉ thoa dầu xả ở đuôi tóc", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tránh dầu gội dưỡng tóc chứa dưỡng chất nặng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tránh dầu xả đậm đặc", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"cắt tóc ngắn hoặc cắt layer để tạo độ bồng bềnh", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"dùng kem ủ và kem dưỡng tóc", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"hạn chế máy sấy, máy hấp", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"tránh kẹp/tết tóc quá chặt", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"dùng lược răng thưa", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"dùng dầu gội dịu nhẹ", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

// ===== Article 143 | Chunk 5 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hạt cỏ cà ri", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"lòng trắng trứng + mật ong + dầu ô liu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"quả lý gai Ấn Độ (Amla)", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"massage da đầu với dầu thảo mộc (dừa, hạnh nhân, hương thảo)", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"sữa đông", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"hạt lanh & trái cây khô", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"cỏ mực", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"dầu thầu dầu", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"hà thủ ô", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"men bia", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"bổ sung biotin", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

MERGE (a12:Advice {name:"nha đam", layer:"Advice"})
MERGE (a12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a12)

// ===== Article 143 | Chunk 6 | Rụng tóc sau sinh =====
MERGE (s:Topic {name:"Rụng tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi nội tiết tố", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"rụng tóc anagen", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"lưu ý hiện tượng 'garo do tóc' khi tóc rụng quấn vào ngón tay/chân/bộ phận cơ thể bé, có thể gây siết và nhiễm trùng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"cho con bú không phải nguyên nhân trực tiếp gây rụng tóc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trong lần mang thai tiếp theo, tình trạng này hiếm khi nặng hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 144 | Chunk 1 | Chăm sóc tóc khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trong thai kỳ, thay đổi nội tiết khiến cơ thể có nhiều vấn đề cần quan tâm, trong đó có tóc", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a1:Advice {name:"một số bác sĩ cho rằng đây là thời kỳ tóc đẹp nhất, dài và dày hơn bình thường", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 144 | Chunk 2 | Chăm sóc tóc khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tóc phát triển qua 3 giai đoạn (mọc, ngưng, rụng)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"bình thường rụng khoảng 100 sợi/ngày", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"khi mang thai, hormone làm thay đổi chu kỳ, tóc mọc mà ít rụng nên trông dày và dài hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"các nghiên cứu cho thấy sợi tóc dày hơn trong quý 3", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"có thể xuất hiện thay đổi độ xoăn của tóc, cơ chế chưa rõ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

// ===== Article 144 | Chunk 3 | Chăm sóc tóc khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên tránh hóa chất với tóc trong 3 tháng đầu thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"sau 3 tháng đầu, có thể dùng hóa chất thận trọng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (det1:Detail {name:"ít nghiên cứu chứng minh an toàn của hóa chất với tóc", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"hóa chất có khả năng hấp thụ qua da đầu", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (a3:Advice {name:"nên hạn chế tối đa việc sử dụng hóa chất với tóc", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"có thể chọn nhuộm highlight hoặc dùng thuốc nhuộm tự nhiên như henna", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"không dùng sản phẩm duỗi chứa keratin có formaldehyde", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 144 | Chunk 4 | Chăm sóc tóc khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không cần thay đổi dầu gội, dầu xả, keo xịt, gel, mút tạo kiểu, trừ khi dùng dầu gội trị gàu theo đơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"một số loại trị gàu có thành phần không an toàn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"có thể dùng dầu gội trị nấm theo đơn, còn dầu gội chứa cortisone phải được bác sĩ cho phép", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"một số thai phụ nhạy cảm với mùi hương nên có thể chuyển sang sản phẩm không mùi", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 144 | Chunk 5 | Chăm sóc tóc khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc tóc", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tóc sau sinh: thời kỳ tóc đẹp nhất kết thúc vài tháng sau khi sinh, tóc bám chắc bắt đầu rụng nhiều, thường từ tháng 3–6 sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"rụng nhiều hay ít tùy người, nhưng sau đó tóc sẽ mọc lại bình thường", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"đây là hiện tượng sinh lý bình thường, không gây hói", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 145 | Chunk 1 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"nốt đen ở ngực", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"nốt đen ở núm vú", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"nốt đen ở mặt trong đùi", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"thâm nám (melasma) trên mặt", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"đường đen Linea nigra từ rốn đến lông mu", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

MERGE (s6:Symptom {name:"vết rạn da", layer:"Symptom"})
MERGE (s6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s6)

MERGE (s7:Symptom {name:"mụn trứng cá", layer:"Symptom"})
MERGE (s7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s7)

MERGE (s8:Symptom {name:"tĩnh mạch hình mạng nhện", layer:"Symptom"})
MERGE (s8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s8)

MERGE (s9:Symptom {name:"giãn tĩnh mạch", layer:"Symptom"})
MERGE (s9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s9)

// ===== Article 145 | Chunk 2 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"đa số liên quan đến thay đổi hormone trong thai kỳ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"một số chưa rõ nguyên nhân", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (det1:Detail {name:"nốt đen và thâm nám là do tăng melanin", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"thường tự mờ sau sinh, nhưng có thể tồn tại lâu hơn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (a1:Advice {name:"cần tránh nắng, dùng kem chống nắng, đội mũ để hạn chế nặng thêm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 145 | Chunk 3 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"rạn da thường xuất hiện ở bụng, mông, ngực, đùi trong tam cá nguyệt thứ ba", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"rạn da có dạng vệt đỏ sẫm", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"rạn da sau sinh thường mờ đi nhưng không biến mất hoàn toàn", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (a1:Advice {name:"kem dưỡng ẩm giúp làm mềm da nhưng không xoá vết rạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 145 | Chunk 4 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"mụn trứng cá", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"rửa mặt 2 lần/ngày bằng sữa rửa dịu nhẹ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"gội đầu thường xuyên nếu tóc dầu", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"tránh nặn mụn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"dùng mỹ phẩm không chứa dầu", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"benzoyl peroxide bôi ngoài", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"azelaic acid bôi ngoài", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"salicylic acid bôi ngoài", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

MERGE (t4:Treatment {name:"glycolic acid bôi ngoài", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t4)
MERGE (t4)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"liệu pháp hormone", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"tetracycline uống", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

// ===== Article 145 | Chunk 5 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"tĩnh mạch hình mạng nhện", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"do nội tiết và tăng thể tích máu", layer:"Cause"})
MERGE (s1)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"thường ở mặt, cổ, tay", layer:"Symptom"})
MERGE (s1)-[:HAS_DETAIL]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"mờ sau sinh", layer:"Symptom"})
MERGE (s1)-[:HAS_DETAIL]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"giãn tĩnh mạch", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"do tử cung chèn ép tuần hoàn", layer:"Cause"})
MERGE (s4)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"gây sưng, đau, xanh tím ở chân", layer:"Symptom"})
MERGE (s4)-[:HAS_DETAIL]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"có thể ở âm hộ, trực tràng (trĩ)", layer:"Symptom"})
MERGE (s4)-[:HAS_DETAIL]->(s6)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"đi lại thường xuyên", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"tránh ngồi bắt chéo chân", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"kê cao chân", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"tập thể dục", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

MERGE (a5:Advice {name:"mang tất quần", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a5)
MERGE (a5)-[:CONTEXT]->(tk)

MERGE (a6:Advice {name:"ăn nhiều chất xơ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a6)
MERGE (a6)-[:CONTEXT]->(tk)

MERGE (a7:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a7)
MERGE (a7)-[:CONTEXT]->(tk)

// ===== Article 145 | Chunk 6 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hormone thai kỳ làm tóc lông mọc nhiều hơn hoặc ở vị trí bất thường (mặt, ngực, bụng, tay).", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"thường trở lại bình thường sau 6 tháng sau sinh.", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"sau sinh 3 tháng có thể rụng tóc hàng loạt, nhưng tóc mọc lại sau 3–6 tháng.", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"móng tay chân có thể mọc nhanh hơn hoặc dễ gãy, cũng phục hồi sau sinh.", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 145 | Chunk 7 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"sẩn đỏ, mề đay ngứa, xuất hiện cuối thai kỳ, thường ở bụng rồi lan", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"nốt ngứa giống côn trùng cắn, có thể kéo dài nhiều tháng, liên quan thay đổi miễn dịch", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"bọng nước, có nguy cơ sinh non, nhẹ cân", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"ngứa lòng bàn tay, chân, xuất hiện tam cá nguyệt 3, tăng nguy cơ sinh non, thai lưu hiếm gặp", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"các thay đổi hiếm gặp: sẩn ngứa và mề đay khi mang thai (PUPPP)", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"bệnh mụn nước (pemphigoid) – hiếm gặp, thường tam cá nguyệt 2–3", layer:"Detail"})
MERGE (det2)-[:HAS_DETAIL]->(s)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"ứ mật gan thai kỳ (ICP) – gây ngứa lòng bàn tay, chân, xuất hiện tam cá nguyệt 3", layer:"Detail"})
MERGE (det3)-[:HAS_DETAIL]->(s)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 145 | Chunk 8 | Những thay đổi ngoài da khi thai kỳ =====
MERGE (s:Topic {name:"Thay đổi ngoài da", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"âm đạo là đường dẫn từ bên ngoài vào tử cung", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (def2:Definition {name:"âm hộ là phần ngoài của cơ quan sinh dục nữ", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def2)
MERGE (def2)-[:CONTEXT]->(tk)

MERGE (def3:Definition {name:"đường linea nigra là đường sẫm màu chạy dọc từ rốn xuống mu", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def3)
MERGE (def3)-[:CONTEXT]->(tk)

MERGE (def4:Definition {name:"hệ miễn dịch là hệ thống bảo vệ cơ thể khỏi các tác nhân gây bệnh", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def4)
MERGE (def4)-[:CONTEXT]->(tk)

MERGE (def5:Definition {name:"hormone là các chất điều hòa chức năng của cơ thể", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def5)
MERGE (def5)-[:CONTEXT]->(tk)

MERGE (def6:Definition {name:"nám da là tình trạng da bị sẫm màu do tác động của ánh nắng mặt trời", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def6)
MERGE (def6)-[:CONTEXT]->(tk)

MERGE (def7:Definition {name:"rối loạn tự miễn là tình trạng hệ miễn dịch tấn công nhầm các tế bào khỏe mạnh của cơ thể", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def7)
MERGE (def7)-[:CONTEXT]->(tk)

MERGE (def8:Definition {name:"tam cá nguyệt là giai đoạn 3 tháng của thai kỳ", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def8)
MERGE (def8)-[:CONTEXT]->(tk)

MERGE (def9:Definition {name:"thuốc kháng sinh là loại thuốc dùng để điều trị nhiễm trùng do vi khuẩn", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def9)
MERGE (def9)-[:CONTEXT]->(tk)

MERGE (def10:Definition {name:"trực tràng là phần cuối của ruột già", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def10)
MERGE (def10)-[:CONTEXT]->(tk)

MERGE (def11:Definition {name:"tử cung là cơ quan sinh dục nữ chứa thai nhi", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def11)
MERGE (def11)-[:CONTEXT]->(tk)

// ===== Article 146 | Chunk 1 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể thao ít nhất 30 phút mỗi ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"giảm đau lưng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"giảm táo bón", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"giảm đầy hơi", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"giảm sưng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"ngăn ngừa/điều trị tiểu đường thai kỳ", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tăng năng lượng", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"cải thiện tâm trạng", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"cải thiện tư thế", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"tăng cơ", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"tăng dẻo dai", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

MERGE (a12:Advice {name:"tăng sức chịu đựng", layer:"Advice"})
MERGE (a12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a12)

MERGE (a13:Advice {name:"ngủ tốt hơn", layer:"Advice"})
MERGE (a13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a13)

MERGE (a14:Advice {name:"giữ dáng", layer:"Advice"})
MERGE (a14)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a14)

MERGE (a15:Advice {name:"phục hồi vóc dáng sau sinh", layer:"Advice"})
MERGE (a15)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a15)

// ===== Article 146 | Chunk 2 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"hormone làm dây chằng giãn, khớp lỏng lẻo", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"trọng lượng phía trước tăng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (comp1:Complication {name:"dễ chấn thương", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"thay đổi trọng tâm, gây áp lực khớp, đau lưng, mất thăng bằng, dễ ngã", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"nhất là cuối thai kỳ", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

// ===== Article 146 | Chunk 3 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hình thức an toàn: đi bộ, bơi, đi xe đạp, tập aerobic, tiếp tục chạy bộ (nếu trước đó đã tập, nhưng cần điều chỉnh).", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 146 | Chunk 4 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hình thức nên tránh: thể hình, lướt ván, cưỡi ngựa, một số môn vợt dễ mất thăng bằng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nguy cơ cao: trượt tuyết xuống dốc, thể thao đối kháng (khúc côn cầu, bóng rổ, bóng đá), lặn biển (nguy cơ bệnh khí ép cho thai nhi)", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 146 | Chunk 5 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh động tác nhảy, thay đổi hướng đột ngột", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh tập khi khí hậu nóng ẩm hoặc khi sốt", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"sau 3 tháng đầu tránh bài tập liên quan đến lưng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"bắt đầu từ 5 phút/ngày nếu đã ngừng tập lâu, tăng dần lên 30 phút", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"mặc đồ thoáng, áo ngực hỗ trợ tốt, uống đủ nước, ăn đủ calories", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 146 | Chunk 6 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ngưng tập và gọi bác sĩ nếu: chảy máu âm đạo", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ngưng tập và gọi bác sĩ nếu: chóng mặt", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ngưng tập và gọi bác sĩ nếu: khó thở", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"ngưng tập và gọi bác sĩ nếu: đau ngực", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"ngưng tập và gọi bác sĩ nếu: đau đầu", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"ngưng tập và gọi bác sĩ nếu: yếu cơ", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"ngưng tập và gọi bác sĩ nếu: đau/sưng bắp chân", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"ngưng tập và gọi bác sĩ nếu: co thắt tử cung", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"ngưng tập và gọi bác sĩ nếu: giảm cử động thai", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"ngưng tập và gọi bác sĩ nếu: rỉ dịch âm đạo", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)



// ===== Article 146 | Chunk 8 | Tiểu đường thai kỳ =====
MERGE (s:Disease {name:"Tiểu đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"bệnh tiểu đường xuất hiện trong thai kỳ do tác động hormone", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"thường giảm sau khi sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 147 | Chunk 1 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"giảm đau lưng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"giảm táo bón", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"giảm đầy hơi", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"giảm sưng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"ngăn ngừa hoặc điều trị tiểu đường thai kỳ", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tăng năng lượng", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"cải thiện tâm trạng", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"cải thiện tư thế", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"tăng sức mạnh", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"tăng sự dẻo dai", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"tăng sức chịu đựng", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

MERGE (a12:Advice {name:"ngủ tốt hơn", layer:"Advice"})
MERGE (a12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a12)

MERGE (a13:Advice {name:"giúp giữ dáng", layer:"Advice"})
MERGE (a13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a13)

MERGE (a14:Advice {name:"hỗ trợ phục hồi vóc dáng sau sinh", layer:"Advice"})
MERGE (a14)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a14)

// ===== Article 147 | Chunk 2 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"những thay đổi cơ thể khi mang thai ảnh hưởng đến tập luyện", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"hormone làm giãn dây chằng, khớp dễ chấn thương", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"trọng lượng tăng gây áp lực lên lưng và khung chậu", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"thay đổi trọng tâm khiến dễ ngã", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (det5:Detail {name:"nhịp tim và nhu cầu oxy tăng cao", layer:"Detail"})
MERGE (det5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det5)

// ===== Article 147 | Chunk 3 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các hình thức tập thể thao an toàn trong thai kỳ: đi bộ, bơi lội, đạp xe, tập aerobic nhẹ, tiếp tục chạy nếu đã quen trước đó (cần điều chỉnh)", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 147 | Chunk 4 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên tránh tập thể hình nâng tạ nặng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nên tránh lướt ván", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nên tránh cưỡi ngựa", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nên tránh trượt tuyết xuống dốc", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"nên tránh thể thao đối kháng (khúc côn cầu, bóng rổ, bóng đá)", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"nên tránh lặn biển", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (comp1:Complication {name:"những môn này có nguy cơ ngã, chấn thương hoặc ảnh hưởng đến thai nhi", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 147 | Chunk 5 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh động tác nhảy, va chạm, thay đổi hướng đột ngột", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh bài tập nằm ngửa sau tam cá nguyệt thứ nhất", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh tập nhanh trong môi trường nóng ẩm", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"mặc quần áo thoáng mát, áo ngực nâng đỡ tốt", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"đảm bảo đủ calories", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 147 | Chunk 6 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu chảy máu âm đạo", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu chóng mặt", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu khó thở", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu đau ngực", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu đau đầu", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu yếu cơ", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu sưng bắp chân", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu co thắt tử cung", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu giảm cử động thai", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"cần ngừng tập và gọi bác sĩ nếu có dấu hiệu rỉ dịch âm đạo", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

// ===== Article 147 | Chunk 7 | Tập thể thao khi thai kỳ =====
MERGE (s:Topic {name:"Tập thể thao", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ là cách tập luyện an toàn để quay lại thể thao", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đi bộ nhanh vài lần/tuần giúp hồi phục sức lực", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hít thở không khí trong lành", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"chuẩn bị cho các môn thể thao nặng hơn khi cơ thể khỏe hơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 149 | Chunk 1 | Giảm đau lưng trong khi thai kỳ =====
MERGE (s:Topic {name:"Giảm đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"sự căng cơ lưng", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"trọng tâm cơ thể thay đổi khiến tư thế thay đổi, cơ lưng phải làm việc nhiều hơn", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"cơ bụng yếu cũng góp phần gây đau lưng vì bình thường cơ này hỗ trợ cột sống", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (c4:Cause {name:"cơ bụng bị căng và suy yếu, dễ gây đau lưng và chấn thương khi vận động", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

MERGE (c5:Cause {name:"hormone thai kỳ cũng làm giãn dây chằng khớp chịu lực ở xương chậu, tạo điều kiện cho sinh nở nhưng có thể làm đau lưng nếu các khớp dịch chuyển quá mức", layer:"Cause"})
MERGE (c5)-[:HAS_CAUSE]->(s)
MERGE (c5)-[:CONTEXT]->(tk)

// ===== Article 149 | Chunk 2 | Giảm đau lưng trong khi thai kỳ =====
MERGE (s:Topic {name:"Giảm đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"đứng, ngồi và đi lại đúng tư thế", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr1)
MERGE (pr1)-[:CONTEXT]->(tk)

MERGE (pr2:Prevention {name:"đi giày thấp có đệm lót", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr2)
MERGE (pr2)-[:CONTEXT]->(tk)

MERGE (pr3:Prevention {name:"nhờ người giúp khi nhấc vật nặng", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr3)
MERGE (pr3)-[:CONTEXT]->(tk)

MERGE (pr4:Prevention {name:"đặt một chân lên ghế đẩu khi phải đứng lâu", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr4)
MERGE (pr4)-[:CONTEXT]->(tk)

MERGE (pr5:Prevention {name:"nếu giường mềm thì lót ván dưới đệm", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr5)
MERGE (pr5)-[:CONTEXT]->(tk)

MERGE (pr6:Prevention {name:"khi nhặt vật, ngồi xổm hoặc khụy gối thay vì cúi xuống", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr6)
MERGE (pr6)-[:CONTEXT]->(tk)

MERGE (pr7:Prevention {name:"ngồi ghế hỗ trợ lưng hoặc kê gối nhỏ sau lưng", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr7)
MERGE (pr7)-[:CONTEXT]->(tk)

MERGE (pr8:Prevention {name:"ngủ nghiêng một bên, có gối kẹp giữa hai chân", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr8)
MERGE (pr8)-[:CONTEXT]->(tk)

// ===== Article 149 | Chunk 3 | Giảm đau lưng trong khi thai kỳ =====
MERGE (s:Topic {name:"Giảm đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"có thể chườm nóng hoặc lạnh, mát xa chỗ đau", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập luyện giúp củng cố và kéo căng cơ hỗ trợ lưng, bụng, hông, chân và cải thiện tư thế", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"các bài tập dưới nước hoặc đi bộ vừa an toàn vừa tốt cho lưng, không chỉ giảm đau mà còn chuẩn bị cho kỳ sinh nở", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 149 | Chunk 4 | Giảm đau lưng trong khi thai kỳ =====
MERGE (s:Topic {name:"Giảm đau lưng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu đau kéo dài hơn 2 tuần, cần đi khám để loại trừ nguyên nhân khác", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đau lưng có thể là triệu chứng tiền sản", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"phải đi khám ngay khi có sốt, nóng rát khi đi tiểu hoặc chảy máu âm đạo", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 150 | Chunk 1 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"những ông bố bà mẹ tương lai thường nghĩ rằng sau khi sinh con sẽ khó có được một giấc ngủ ngon, nhưng lại không ngờ rằng khi mang thai lại khó ngủ đến thế", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"trên thực tế, bạn có thể ngủ nhiều hơn bình thường trong ba tháng đầu tiên của thai kỳ", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (c1:Cause {name:"cảm giác mệt mỏi khi cơ thể của bạn phải hoạt động để bảo vệ và nuôi dưỡng thai nhi đang phát triển là điều bình thường", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nhau thai vừa được hình thành, cơ thể bạn đang phải sản xuất nhiều máu hơn, và tim bạn phải bơm máu nhanh hơn", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (det3:Detail {name:"thông thường giai đoạn sau của thời kỳ mang thai, hầu hết phụ nữ khó có giấc ngủ sâu và không bị gián đoạn", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 150 | Chunk 2 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"kích thước của thai nhi đang to lên, làm bạn khó tìm được tư thế ngủ thoải mái", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nếu bạn thường ngủ nằm ngửa hoặc nằm sấp, bạn có thể thấy khó quen với tư thế ngủ nghiêng mà bác sĩ khuyên", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"xoay người trên giường khi ngủ cũng trở nên khó khăn trong thai kỳ vì kích thước cơ thể lớn hơn trước", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 150 | Chunk 3 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nhu cầu đi tiểu thường xuyên hơn", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nhịp tim tăng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"khó thở", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"chuột rút", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"đau lưng", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

MERGE (c6:Cause {name:"chứng ợ nóng", layer:"Cause"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c6)

MERGE (c7:Cause {name:"táo bón", layer:"Cause"})
MERGE (c7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c7)

MERGE (comp1:Complication {name:"thức giấc nhiều lần trong đêm", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"ảnh hưởng đến chất lượng giấc ngủ", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

// ===== Article 150 | Chunk 4 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"căng thẳng", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"lo âu", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (det1:Detail {name:"nhiều phụ nữ mang thai cho biết họ có những giấc mơ sống động hoặc ác mộng", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (c3:Cause {name:"lo lắng về sức khỏe của thai nhi", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"lo lắng về việc sinh nở", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"lo lắng về vai trò làm mẹ", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

// ===== Article 150 | Chunk 5 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tư thế ngủ tốt nhất trong thai kỳ là nằm nghiêng, đặc biệt là nghiêng bên trái", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tư thế này giúp giảm áp lực lên tĩnh mạch chủ dưới, cải thiện lưu thông máu đến tim, tử cung, thận và thai nhi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nếu bạn lỡ trở mình nằm ngửa khi ngủ, sự khó chịu sẽ khiến bạn tỉnh giấc và đổi tư thế", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"có thể dùng gối ôm, gối kê dưới bụng, giữa hai chân hoặc sau lưng để tìm tư thế dễ chịu hơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 150 | Chunk 6 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hạn chế caffeine", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh ăn quá no trước khi ngủ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"duy trì giờ ngủ đều đặn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tập yoga hoặc thư giãn nhẹ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tắm nước ấm", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"uống sữa với mật ong hoặc trà thảo dược", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"đảm bảo bổ sung đủ canxi để giảm chuột rút", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"nếu lo âu làm bạn khó ngủ, hãy tham gia lớp tiền sản để giảm căng thẳng", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

// ===== Article 150 | Chunk 7 | Ngủ trong thời gian thai kỳ =====
MERGE (s:Topic {name:"Ngủ", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu mất ngủ, thay vì trằn trọc trên giường, hãy dậy và làm việc nhẹ: đọc sách, nghe nhạc, xem tv hoặc làm việc yêu thích đến khi cảm thấy buồn ngủ trở lại", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ngủ trưa 30-60 phút mỗi ngày có thể bù đắp một phần thiếu ngủ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 151 | Chunk 1 | Chăm sóc răng miệng khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc răng miệng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ khi đang mang thai cần lưu tâm đến sức khỏe răng miệng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (s1:Symptom {name:"viêm nướu có thể xuất hiện nặng hơn trong thai kì, gây sưng, đỏ, dễ chảy máu", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (a2:Advice {name:"nha sĩ có thể khuyên làm sạch răng miệng thường xuyên hơn để phòng ngừa viêm nướu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 151 | Chunk 3 | Chăm sóc răng miệng khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc răng miệng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các thai phụ nên duy trì đến phòng nha để kiểm tra răng miệng và làm sạch răng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thông báo cho nha sĩ về tình trạng mang thai và các thay đổi về sức khỏe răng miệng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"thông báo về các thuốc đang dùng; nha sĩ sẽ cân nhắc kê toa an toàn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 151 | Chunk 5 | Chăm sóc răng miệng khi thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc răng miệng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"việc chụp phim tia x có thể hoãn đến sau sinh, nhưng nếu cần, nha sĩ dùng áo chì che chắn và vòng bảo vệ tuyến giáp", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thai phụ nên báo cho bác sĩ/nha sĩ mọi lo lắng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"chải răng kỹ ít nhất 2 lần/ngày với kem fluoride", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"làm sạch kẽ răng bằng chỉ nha khoa hoặc dụng cụ chuyên dụng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 151 | Chunk 6 | Chế độ ăn trong thai kỳ =====
MERGE (s:Topic {name:"Chế độ ăn", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên chú ý thói quen ăn uống và vệ sinh răng miệng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"ăn vặt thường xuyên làm tăng nguy cơ sâu răng do mảng bám", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"vi khuẩn chuyển hóa đường và tinh bột thành acid tấn công men răng", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"thời gian acid tồn tại càng lâu, rủi ro sâu răng càng cao", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

// ===== Article 152 | Chunk 1 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hãy hỏi bác sĩ để đảm bảo việc bạn tập thể dục trong thời gian mang thai là an toàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"một số bệnh có thể khiến việc tập thể dục không có lợi cho bạn hoặc em bé", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 152 | Chunk 2 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"tập thể dục giúp bạn cảm thấy khỏe khoắn, duy trì cân nặng, giảm bớt hoặc ngăn chặn sự khó chịu trong thai kỳ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"tập thể dục cũng tăng năng lượng, chuẩn bị cơ thể cho chuyển dạ bằng cách cải thiện sức bền và sức mạnh cơ bắp", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

// ===== Article 152 | Chunk 3 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"nếu không mắc bệnh lý nghiêm trọng và đang có thai kỳ bình thường, tập thể dục thường là an toàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 152 | Chunk 4 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"kiểm tra với bác sĩ trước khi bắt đầu bất kỳ chương trình thể dục nào", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bác sĩ chấp thuận, hãy bắt đầu ở mức độ nhẹ, không gây đau, khó thở hoặc mệt mỏi quá mức", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tăng dần cường độ nếu cảm thấy khỏe", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 152 | Chunk 5 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu trước khi mang thai bạn đã tập thể dục, có thể tiếp tục với mức điều chỉnh phù hợp", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu chưa từng tập trước đây, hãy bắt đầu thật chậm và nhẹ nhàng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 152 | Chunk 6 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các bài tập tốt nhất cho thai phụ là những bài không tạo thêm trọng lượng cho cơ thể", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bơi, đạp xe, đi bộ và thể dục nhịp điệu nhẹ đều phù hợp", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"trao đổi với bác sĩ để chọn bài tập tốt nhất", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 152 | Chunk 7 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh các hoạt động làm tăng nguy cơ té ngã hoặc chấn thương như thể thao tiếp xúc hoặc thể thao gắng sức", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ngay cả va chạm nhẹ vào bụng cũng nguy hiểm trong thai kỳ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 152 | Chunk 8 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"từ sau tháng thứ 3, tránh tập luyện ở tư thế nằm ngửa vì trọng lượng em bé có thể cản trở lưu thông máu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh đứng quá lâu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 152 | Chunk 9 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trong thời tiết nóng, tập thể dục vào sáng sớm hoặc chiều tối", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu tập trong nhà, đảm bảo thông gió tốt và có quạt làm mát", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống nhiều nước, ngay cả khi không cảm thấy khát", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 152 | Chunk 10 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"duy trì chế độ ăn uống cân bằng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"khi mang thai, nhu cầu năng lượng tăng thêm khoảng 300 calo mỗi ngày, ngay cả khi không tập thể dục", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 152 | Chunk 11 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"lắng nghe cơ thể và báo với bác sĩ nếu gặp các triệu chứng bất thường", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (s1:Symptom {name:"máu chảy từ âm đạo", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"dịch chảy từ âm đạo", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"đau bụng", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"đau âm đạo đột ngột", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"co thắt liên tục sau khi nghỉ 30 phút", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

// ===== Article 152 | Chunk 12 | Thể dục khi thai kỳ =====
MERGE (s:Topic {name:"Thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"báo với bác sĩ nếu có đau ngực, khó thở, nhức đầu kéo dài, chóng mặt, buồn nôn, hoa mắt hoặc nhìn mờ sau khi tập luyện", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 153 | Chunk 1 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chăm sóc trước sinh rất quan trọng. việc này giúp đảm bảo cho bạn và em bé có được sức khỏe tốt nhất", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hãy làm theo hướng dẫn đơn giản và khám thai đều đặn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 153 | Chunk 2 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"đặt lịch khám thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"lần khám đầu thường vào tuần 6–8", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"bác sĩ sẽ hỏi tiền sử bệnh, cân, đo huyết áp và kiểm tra sức khỏe tổng quát", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 153 | Chunk 3 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"khám phụ khoa lần đầu giúp kiểm tra tử cung, cổ tử cung và xét nghiệm Pap", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"xét nghiệm máu, nước tiểu để kiểm tra nhiễm trùng, tiểu đường, tiền sản giật, thiếu máu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 153 | Chunk 4 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"siêu âm được thực hiện để dự đoán ngày sinh, kiểm tra sự phát triển và vị trí thai nhi", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"các xét nghiệm bổ sung có thể được yêu cầu nếu phát hiện nguy cơ bệnh lý", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 153 | Chunk 5 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai thường cần tăng 10–14kg", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"người nhẹ cân cần tăng nhiều hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"người thừa cân tăng ít hơn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tham khảo bác sĩ về mức cân nặng phù hợp", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 153 | Chunk 6 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chế độ ăn uống cân bằng là quan trọng nhất", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh ăn thịt, trứng, cá tái", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"không ăn cá mập, cá kiếm, cá thu, cá kình", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"hạn chế cá ngừ tối đa 170g/tuần", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 153 | Chunk 7 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"rửa sạch trái cây, rau củ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ăn ít nhất 4 khẩu phần sữa mỗi ngày để bổ sung canxi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh sữa chưa tiệt trùng, phô mai mềm, phô mai xanh", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 153 | Chunk 8 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"giới hạn caffeine tối đa 500ml/ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể dùng aspartame hoặc sucralose ở mức độ vừa phải", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nếu bị PKU không dùng aspartame", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 153 | Chunk 9 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"bổ sung 1mg axit folic/ngày để phòng ngừa dị tật ống thần kinh", layer:"Prevention"})
MERGE (pr1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr1)

MERGE (a1:Advice {name:"nên uống từ trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể dùng viên đa sinh tố theo chỉ định bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 153 | Chunk 10 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tham khảo ý kiến bác sĩ trước khi dùng thuốc, kể cả thuốc không kê đơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"một số thuốc có thể gây dị tật bẩm sinh nếu dùng trong 3 tháng đầu", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 153 | Chunk 11 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai có thể tiếp tục làm việc nếu không có bệnh lý nghiêm trọng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh nâng vật nặng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh đứng lâu", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tránh tiếp xúc với hóa chất", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tránh tiếp xúc với kim loại nặng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tránh tiếp xúc với bức xạ", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 153 | Chunk 12 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục ít nhất 30 phút mỗi ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đi bộ, bơi lội là tốt nhất", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh thể thao tiếp xúc hoặc hoạt động có nguy cơ té ngã", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"uống nhiều nước, tránh quá nóng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 153 | Chunk 13 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"quan hệ tình dục an toàn trong thai kỳ trừ khi bác sĩ khuyến cáo tránh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thử các tư thế phù hợp", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (c1:Complication {name:"không thổi khí vào âm đạo vì nguy cơ thuyên tắc khí", layer:"Complication"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(c1)

// ===== Article 153 | Chunk 14 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"ốm nghén", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"mệt mỏi", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"chuột rút", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"táo bón", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"trĩ", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

MERGE (s6:Symptom {name:"tiểu nhiều", layer:"Symptom"})
MERGE (s6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s6)

MERGE (s7:Symptom {name:"suy tĩnh mạch", layer:"Symptom"})
MERGE (s7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s7)

MERGE (s8:Symptom {name:"ợ nóng", layer:"Symptom"})
MERGE (s8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s8)

MERGE (s9:Symptom {name:"nhiễm nấm", layer:"Symptom"})
MERGE (s9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s9)

MERGE (s10:Symptom {name:"nghẹt mũi", layer:"Symptom"})
MERGE (s10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s10)

MERGE (s11:Symptom {name:"phù", layer:"Symptom"})
MERGE (s11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s11)

MERGE (s12:Symptom {name:"thay đổi da", layer:"Symptom"})
MERGE (s12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s12)

MERGE (a1:Advice {name:"có thể xử lý bằng thay đổi thói quen ăn uống, nghỉ ngơi và vệ sinh cá nhân", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 153 | Chunk 15 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"gọi bác sĩ nếu có chảy máu âm đạo", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"gọi bác sĩ nếu có sưng phù đột ngột", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"gọi bác sĩ nếu có đau đầu nghiêm trọng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"gọi bác sĩ nếu có nôn ói kéo dài", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"gọi bác sĩ nếu có chóng mặt", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"gọi bác sĩ nếu có đau bụng", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"gọi bác sĩ nếu có sốt", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"gọi bác sĩ nếu có thay đổi cử động thai", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"gọi bác sĩ nếu có tiểu ít hoặc rát", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

// ===== Article 153 | Chunk 16 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không hút thuốc", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"không dùng ma túy", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"không uống rượu", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (pr1:Prevention {name:"tránh tiếp xúc với phân mèo và thịt sống để phòng toxoplasmosis", layer:"Prevention"})
MERGE (pr1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr1)

MERGE (a4:Advice {name:"tránh phòng xông hơi và bồn tắm nóng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 153 | Chunk 17 | Chăm sóc bản thân và thai kỳ =====
MERGE (s:Topic {name:"Chăm sóc bản thân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không thụt rửa âm đạo vì có nguy cơ thuyên tắc khí và làm mất cân bằng vi khuẩn có lợi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chỉ cần vệ sinh bình thường", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 1 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn đang cố gắng tìm cách có con hoặc chỉ mới nghĩ đến việc có con, đây là thời điểm tốt nhất để bắt đầu chuẩn bị", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chăm sóc sức khỏe tiền thai kỳ giúp bé có thể chào đời khỏe mạnh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 2 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"một số chị em chỉ cần vài tháng để sẵn sàng có thai, một số khác có thể cần nhiều thời gian hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"dù là lần mang thai thứ mấy, các bước dưới đây đều quan trọng để có một thai kỳ khỏe mạnh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 154 | Chunk 3 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hãy bắt đầu bằng việc lên kế hoạch và hành động", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu trước đây bạn sử dụng biện pháp tránh thai, giờ là lúc thực hiện các bước để đạt mục tiêu có thai và sinh em bé khỏe mạnh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 4 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi khám bác sĩ sản khoa để được tư vấn chăm sóc sức khỏe tiền thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bác sĩ sẽ xem xét tiền sử bệnh, các thuốc đang sử dụng, tiêm chủng cần thiết và biện pháp phòng ngừa dị tật bẩm sinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 5 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hãy liệt kê câu hỏi và vấn đề cần trao đổi để không bỏ sót khi gặp bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"tình trạng sức khỏe", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"bệnh lây truyền qua đường tình dục", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"tiểu đường", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"tuyến giáp", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"huyết áp cao", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

// ===== Article 154 | Chunk 6 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chia sẻ phong cách sống với bác sĩ: hút thuốc, uống rượu, môi trường căng thẳng, tiếp xúc chất độc hại", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 154 | Chunk 7 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trao đổi với bác sĩ về các loại thuốc đang dùng, bao gồm thuốc kê đơn, không kê đơn, thực phẩm chức năng, thảo dược", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"một số thuốc có thể gây dị tật bẩm sinh", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (a2:Advice {name:"cần điều chỉnh trước khi mang thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 8 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu đang sử dụng opioid để điều trị hoặc lạm dụng thuốc, hãy lập kế hoạch điều trị và trao đổi với chuyên gia y tế để giảm nguy cơ cho thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 154 | Chunk 9 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"tiêm phòng vaccine trước hoặc trong thai kỳ theo khuyến cáo", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr1)
MERGE (pr1)-[:CONTEXT]->(tk)

MERGE (pr2:Prevention {name:"tiêm chủng đúng thời điểm giúp mẹ có thai kỳ khỏe mạnh và bảo vệ em bé suốt đời", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr2)
MERGE (pr2)-[:CONTEXT]->(tk)

// ===== Article 154 | Chunk 10 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"uống 400 microgam axit folic mỗi ngày, bắt đầu ít nhất 1 tháng trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (p1:Prevention {name:"giúp ngăn ngừa dị tật bẩm sinh lớn về não và cột sống của bé", layer:"Prevention"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(p1)

// ===== Article 154 | Chunk 11 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ngừng hút thuốc, uống rượu và sử dụng ma túy để giảm nguy cơ sinh non, dị tật bẩm sinh và tử vong sơ sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu khó bỏ, hãy tìm sự hỗ trợ từ bác sĩ hoặc trung tâm cai nghiện", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 12 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh các hóa chất độc hại và ô nhiễm môi trường như phân bón, thuốc trừ sâu, phân mèo, hóa chất tổng hợp", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"những chất này có thể ảnh hưởng đến khả năng sinh sản và sức khỏe của trẻ", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 154 | Chunk 13 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"duy trì cân nặng hợp lý trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (rf1:RiskFactor {name:"thừa cân hoặc thiếu cân đều làm tăng nguy cơ biến chứng", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (a2:Advice {name:"tạo lối sống ăn uống lành mạnh và tập thể dục thường xuyên", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 14 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"nếu bạn bị bạo hành hoặc bạo lực gia đình, hãy tìm sự giúp đỡ để bảo vệ an toàn của bạn và thai nhi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 154 | Chunk 15 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thu thập tiền sử gia đình, đặc biệt nếu có dị tật tim bẩm sinh, bệnh di truyền, sẩy thai nhiều lần hoặc vô sinh. chia sẻ thông tin này với bác sĩ để phòng ngừa rủi ro cho con bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 154 | Chunk 16 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chú ý đến sức khỏe tinh thần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu lo âu, buồn bã, căng thẳng kéo dài ảnh hưởng đến cuộc sống, hãy tìm sự hỗ trợ từ bác sĩ hoặc chuyên gia tâm lý", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 154 | Chunk 17 | Lập kế hoạch để chuẩn bị thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"duy trì thói quen lành mạnh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"khám thai định kỳ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 155 | Chunk 1 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"mất cân bằng nội tiết tố là nguyên nhân hàng đầu gây vô sinh", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (h1:Detail {name:"progesterone là hormone quan trọng trong khả năng mang thai", layer:"Detail"})
MERGE (h1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(h1)

MERGE (c2:Cause {name:"nồng độ progesterone thấp có thể cản trở việc thụ thai", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

// ===== Article 155 | Chunk 2 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"progesterone điều hòa kinh nguyệt và chuẩn bị niêm mạc tử cung cho trứng đã thụ tinh làm tổ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"khi mang thai, progesterone giúp nuôi dưỡng thai nhi", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (app3:Application {name:"nếu không mang thai, progesterone giảm và bắt đầu chu kỳ kinh nguyệt", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

// ===== Article 155 | Chunk 3 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"tập thể dục quá sức", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"căng thẳng kéo dài", layer:"Cause"})
MERGE (c2)-[:HAS_CAUSE]->(s)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"tiếp xúc xenoestrogen (trong nhựa, thuốc trừ sâu)", layer:"Cause"})
MERGE (c3)-[:HAS_CAUSE]->(s)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (c4:Cause {name:"thừa cân", layer:"Cause"})
MERGE (c4)-[:HAS_CAUSE]->(s)
MERGE (c4)-[:CONTEXT]->(tk)

MERGE (c5:Cause {name:"mãn kinh ở phụ nữ lớn tuổi", layer:"Cause"})
MERGE (c5)-[:HAS_CAUSE]->(s)
MERGE (c5)-[:CONTEXT]->(tk)

// ===== Article 155 | Chunk 4 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"đau nửa đầu", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"nhức đầu", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"phiền muộn", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"khó ngủ", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"mệt mỏi", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"táo bón", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"căng tức vú", layer:"Symptom"})
MERGE (s7)-[:HAS_SYMPTOM]->(s)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"tâm trạng thất thường", layer:"Symptom"})
MERGE (s8)-[:HAS_SYMPTOM]->(s)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"progesterone thấp", layer:"Cause"})
MERGE (c1)-[:HAS_CAUSE]->(s)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"khó mang thai", layer:"Complication"})
MERGE (comp1)-[:HAS_COMPLICATION]->(s)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 155 | Chunk 5 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục vừa phải 30–60 phút, 4 ngày/tuần", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"duy trì cân nặng hợp lý", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"giảm căng thẳng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"ăn uống điều độ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 155 | Chunk 6 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thực phẩm hỗ trợ sản xuất progesterone: đậu gà, bí đỏ, hạnh nhân, trứng, hạt lanh, cá (cá ngừ, cá thu, cá hồi), vitamin b6, c, e, gạo lứt, bông cải xanh, khoai tây, dầu ô liu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 155 | Chunk 7 | Mất cân bằng hormone ảnh hưởng đến khả năng thai kỳ =====
MERGE (s:Topic {name:"Mất cân bằng hormone", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn hạt dinh dưỡng, dầu thực vật, yến mạch, rau giàu chất xơ để cân bằng hormone và tăng khả năng mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"cholesterol và chất xơ cũng quan trọng cho quá trình sinh sản", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 156 | Chunk 1 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ có khả năng mang thai nên bổ sung 400 microgram axit folic mỗi ngày trước khi mang thai và trong 12 tuần đầu thai kỳ để giảm nguy cơ dị tật ống thần kinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (comp1:Complication {name:"dị tật ống thần kinh xảy ra khi tủy sống thai nhi không hình thành bình thường, có thể gây tật chẻ đốt sống", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (a2:Advice {name:"một số phụ nữ cần bổ sung liều cao 5 mg axit folic mỗi ngày nếu bản thân hoặc chồng có dị tật ống thần kinh, có tiền sử mang thai bị dị tật, gia đình mắc dị tật, bị đái tháo đường hoặc đang dùng thuốc trị động kinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hãy yêu cầu bác sĩ kê đơn bổ sung liều cao khi cần", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 156 | Chunk 2 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"hút thuốc trong thai kỳ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (comp1:Complication {name:"tăng nguy cơ sẩy thai", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"sinh non", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"nhẹ cân", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"các biến chứng khác", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (a1:Advice {name:"đường dây trợ giúp của NHS Smokefree 0300 123 1044 (9h–20h thứ 2 đến thứ 6, 11h–16h cuối tuần) cung cấp hỗ trợ bỏ thuốc miễn phí, bao gồm cả khi đang mang thai, và thông tin về dịch vụ hỗ trợ địa phương", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c2:Cause {name:"khói thuốc lá thụ động", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (a2:Advice {name:"hãy yêu cầu chồng, bạn bè và các thành viên gia đình không hút thuốc gần bạn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 156 | Chunk 3 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không nên uống rượu khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"không có mức độ an toàn nào cho rượu trong thai kỳ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 156 | Chunk 4 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) có thể gây khó khăn khi mang thai", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) giảm hiệu quả điều trị khả năng sinh sản", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (comp1:Complication {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) tăng nguy cơ tăng huyết áp", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) tăng nguy cơ huyết khối", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) tăng nguy cơ sẩy thai", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"thừa cân (BMI > 25) hoặc béo phì (BMI > 30) tăng nguy cơ đái tháo đường thai kỳ", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (a1:Advice {name:"có thể kiểm tra chỉ số BMI trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"trong thai kỳ, chỉ số BMI có thể không chính xác, nên tham khảo ý kiến nữ hộ sinh hoặc bác sĩ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a2:Advice {name:"nên giữ cân nặng hợp lý bằng chế độ ăn uống điều độ, tập thể dục thường xuyên và tránh tăng cân quá nhiều trong thai kỳ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 156 | Chunk 5 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thông báo cho bác sĩ hoặc dược sĩ tất cả các thuốc đang sử dụng, kể cả thuốc thảo dược và bổ sung vitamin, để tránh thuốc gây hại cho thai nhi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"một số loại thuốc cần đổi sang thuốc an toàn hơn trước khi mang thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"không tự ý ngưng thuốc mà không hỏi ý kiến bác sĩ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 156 | Chunk 6 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"kiểm tra và cập nhật tiêm chủng trước khi mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (a2:Advice {name:"đặc biệt là rubella", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (a3:Advice {name:"thủy đậu", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (a4:Advice {name:"viêm gan B", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

// ===== Article 156 | Chunk 7 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu mắc bệnh mạn tính như động kinh, đái tháo đường, cao huyết áp, bệnh tuyến giáp, hen suyễn… cần thảo luận với bác sĩ về cách kiểm soát bệnh trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 156 | Chunk 8 | Lập kế hoạch cho thai kỳ =====
MERGE (s:Topic {name:"Lập kế hoạch", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ có nguy cơ bệnh hồng cầu hình liềm hoặc thalassemia nên xét nghiệm sàng lọc trước khi mang thai", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu có tiền sử gia đình mắc bệnh di truyền hoặc dị tật bẩm sinh, nên tham khảo tư vấn di truyền trước khi mang thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 158 | Chunk 1 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"xét nghiệm tầm soát người mang mầm gen bệnh được thực hiện để dự đoán khả năng con sinh ra mắc rối loạn di truyền", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"người mang mầm gen bệnh là người không có triệu chứng rõ rệt nhưng có khả năng truyền gen gây bệnh cho con", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 158 | Chunk 2 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"xét nghiệm được thực hiện bằng cách lấy mẫu máu hoặc nước bọt và gửi đến phòng thí nghiệm", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"nếu người đầu tiên xét nghiệm không mang gen bệnh thì không cần kiểm tra thêm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nếu người đầu tiên mang gen bệnh, người còn lại sẽ được xét nghiệm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (advice1:Advice {name:"có thể làm xét nghiệm trước hoặc trong khi mang thai, nhưng xét nghiệm trước mang thai giúp có nhiều lựa chọn và thời gian chuẩn bị hơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice1)
MERGE (advice1)-[:CONTEXT]->(tk)

// ===== Article 158 | Chunk 3 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"hiện chỉ có một số bệnh được tầm soát", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"xơ nang", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"hội chứng nhiễm sắc thể X dễ gãy", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"bệnh hồng cầu hình liềm", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"bệnh Tay-Sachs", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 158 | Chunk 4 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"bản thân bị rối loạn di truyền", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"đã từng có con bị rối loạn di truyền", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"có người trong gia đình mắc rối loạn di truyền", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

MERGE (rf4:RiskFactor {name:"thuộc nhóm có nguy cơ cao theo yếu tố sắc tộc", layer:"RiskFactor"})
MERGE (rf4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)

// ===== Article 158 | Chunk 5 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"người da trắng không gốc Mỹ La tinh có nguy cơ cao mắc xơ nang", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"người Do Thái Đông Âu có nguy cơ cao mắc các bệnh như Tay-Sachs, Canavan, rối loạn thần kinh tự chủ gia đình, mucolipidosis IV, Niemann-Pick A, thiếu máu Fanconi C, hội chứng Bloom, Gaucher", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"người Châu Phi, Địa Trung Hải, Đông Nam Á có nguy cơ cao mắc thiếu máu Địa Trung Hải và hồng cầu lưỡi liềm", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

// ===== Article 158 | Chunk 6 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"kết quả xét nghiệm giúp bác sĩ tính xác suất con bị bệnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nếu cả bố và mẹ mang gen bệnh: 25% con bị bệnh, 50% con mang gen bệnh, 25% con khỏe mạnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nếu chỉ một người mang gen bệnh: 50% con mang gen bệnh, 0% con bị bệnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 158 | Chunk 7 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"xét nghiệm có thể cho kết quả dương tính giả hoặc âm tính giả", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"kết quả âm tính giả vẫn có nguy cơ con sinh ra bị rối loạn di truyền", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 158 | Chunk 8 | Xét nghiệm tầm soát người mang mầm gen bệnh trước khi thai kỳ =====
MERGE (s:Topic {name:"Xét nghiệm tầm soát người mang mầm gen bệnh", layer:"Topic"})
MERGE (tk:Topic {name:"Trước khi thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"vẫn quyết định mang thai và làm chẩn đoán tiền sản", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thụ tinh nhân tạo với trứng/tinh trùng hiến kết hợp chẩn đoán di truyền tiền cấy phôi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"lựa chọn không mang thai", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 161 | Chunk 2 | Trầm cảm sau sanh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"người ta phỏng vấn gần 3000 bà mẹ từ 18-35 tuổi, mang thai lần đầu, về sự hài lòng với chồng/ bạn đời. thời điểm phỏng vấn là 3 tháng cuối thai kỳ và sau sanh một tháng.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"những ai thấy 'bực mình' ông chồng quá, bất mãn hay thất vọng về chồng thì dễ bị trầm cảm sau sanh hơn những ai thấy hài lòng với quan hệ hôn nhân của mình.", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"những bà mẹ trẻ <30 tuổi lại dễ bị trầm cảm hơn.", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)
MERGE (rf2)-[:CONTEXT]->(tk)

// ===== Article 161 | Chunk 3 | Trầm cảm sau sanh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn < 30 tuổi, mang thai lần đầu, bạn hãy tự trang bị cho mình những kiến thức cơ bản về mang thai và chăm sóc trẻ sơ sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 161 | Chunk 4 | Trầm cảm sau sanh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"quan hệ tình cảm vợ chồng trục trặc, không tốt đẹp", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"gia đình, bạn bè, hay thậm chí là bác sĩ biết điều này để giúp đỡ các bà mẹ mang thai", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"nhận biết sớm là điều quan trọng trong chẩn đoán và điều trị trầm cảm", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 161 | Chunk 5 | Trầm cảm sau sanh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu mỗi anh chồng biết điều này thì quanh những thời điểm nhạy cảm (trước và sau sanh) nên tử tế một chút, hạn chế mọi việc làm tổn thương vợ – bạn đời của mình", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hãy hiểu đơn giản nhất, nếu việc anh làm xảy ra ở một thời điểm khác, thì sự tổn hại có thể thấp hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 161 | Chunk 6 | Trầm cảm sau sanh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nói vậy không có nghĩa là chỉ việc tử tế ở 3 tháng cuối thai kỳ và tháng đầu sau sanh, bởi vì đâu có tình cảm hay sự thương yêu nào được định lượng, đo lường trong khoảng thời gian nhất định", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 162 | Chunk 1 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thai kỳ kéo dài khoảng 40 tuần, chia thành 3 tam cá nguyệt", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"ngày dự sinh được tính từ kỳ kinh cuối trừ 3 tháng cộng 7 ngày", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 162 | Chunk 2 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"quý i thường cần nghỉ ngơi nhiều, có thể buồn nôn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"quý ii cơ thể điều chỉnh, năng lượng cải thiện", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"quý iii thai lớn, có thể khó ngủ và khó di chuyển", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 162 | Chunk 3 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"quan hệ khi mang thai được phép nếu bác sĩ không cấm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể thay thế bằng âu yếm, hôn, mơn trớn, kích thích bằng tay hoặc quan hệ bằng miệng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 162 | Chunk 4 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không nên hút gần phụ nữ mang thai vì ảnh hưởng đến thai và trẻ sơ sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 162 | Chunk 5 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tham gia buổi khám thai: đi cùng vợ giúp nắm tiền sử bệnh, xét nghiệm cần thiết, đảm bảo thông tin y tế rõ ràng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 162 | Chunk 6 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"các xét nghiệm trong buổi khám thai: kiểm tra thể chất, huyết áp, cân nặng, chiều cao, xét nghiệm máu và nước tiểu", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"kiểm tra vùng chậu", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (app3:Application {name:"xét nghiệm HIV, giang mai và các bệnh lây qua đường tình dục khác", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

MERGE (app4:Application {name:"siêu âm tuần 18-20", layer:"Application"})
MERGE (app4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app4)

MERGE (app5:Application {name:"xét nghiệm tiếp theo có thể gồm: tim thai, đo cân nặng, chiều cao bào thai, vị trí bào thai, dị tật bẩm sinh, đái tháo đường thai kỳ, Streptococcus nhóm B", layer:"Application"})
MERGE (app5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app5)

// ===== Article 162 | Chunk 7 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tham gia lớp sinh sản", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tham quan khoa sản", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"chuẩn bị phương tiện di chuyển an toàn cho trẻ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 162 | Chunk 8 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hỗ trợ khi vợ chuyển dạ: giúp phân tâm, đi dạo, theo dõi co thắt, xoa bóp, hỗ trợ kỹ thuật thư giãn, động viên trong giai đoạn rặn đẻ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 162 | Chunk 9 | Những điều ông bố cần biết về thai kỳ =====
MERGE (s:Topic {name:"Những điều ông bố cần biết", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"6 tuần đầu phụ nữ cảm thấy mệt và đau rát", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"sinh mổ bình phục lâu hơn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (a1:Advice {name:"cần điều chỉnh lối sống gia đình", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 164 | Chunk 1 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"đái tháo đường thai kỳ (đtđtk) là bệnh khởi phát trong thai kỳ", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"cần quản lý cẩn thận để đảm bảo sức khỏe mẹ và bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 164 | Chunk 2 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"phát hiện qua xét nghiệm đường huyết định kỳ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (rf1:RiskFactor {name:"tiền sử con đầu lòng nặng cân", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"các vấn đề chuyển hóa trước đó", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)
MERGE (rf2)-[:CONTEXT]->(tk)

// ===== Article 164 | Chunk 3 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"quản lý chế độ ăn uống: ăn ít tinh bột, cân bằng đường và đạm, lên kế hoạch bữa ăn phù hợp với cả gia đình, hỗ trợ bởi chuyên gia dinh dưỡng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 164 | Chunk 4 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"kiểm tra đường huyết sau mỗi bữa ăn và gửi kết quả cho bác sĩ để điều chỉnh chế độ ăn và thuốc", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 164 | Chunk 5 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (t1:Treatment {name:"khi chế độ ăn và lối sống không kiểm soát được đường huyết, cần tiêm insulin theo chỉ định bác sĩ", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 164 | Chunk 6 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"thực hiện nonstress tests thường xuyên", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (a2:Advice {name:"sinh đúng ngày hoặc trước ngày dự sinh để giảm rủi ro trẻ quá to hoặc nhẹ cân", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 164 | Chunk 7 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"thai phụ nhận thức rõ tác động của chế độ ăn và lối sống lên sức khỏe bản thân và thai nhi, giúp cảm thấy kiểm soát tình trạng tốt hơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 164 | Chunk 8 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tiến hành từng bước, giải quyết những gì có thể, tham khảo các lựa chọn điều trị hiện có để đảm bảo kết quả tốt cho mẹ và bé", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 168 | Chunk 1 | Tăng cân khi thai kỳ =====
MERGE (s:Topic {name:"Tăng cân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tăng cân khi mang thai quan trọng cho sức khỏe mẹ và bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (advice1:Advice {name:"tăng cân phù hợp giúp thai nhi phát triển tốt và giảm nguy cơ biến chứng cho mẹ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice1)
MERGE (advice1)-[:CONTEXT]->(tk)

// ===== Article 168 | Chunk 2 | Tăng cân khi thai kỳ =====
MERGE (s:Topic {name:"Tăng cân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"mức tăng cân phụ thuộc vào bmi trước khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đơn thai: bmi <18.5: 12.7–18.1 kg, 18.5–24.9: 11.3–15.9 kg, 25–29.9: 6.8–11.3 kg, >=30: 5–9.1 kg", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"song thai: bmi <18.5: 22.7–28.1 kg, 18.5–24.9: 16.8–24.5 kg, 25–29.9: 14–22.7 kg, >=30: 11.3–19 kg", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 168 | Chunk 3 | Tăng cân khi thai kỳ =====
MERGE (s:Topic {name:"Tăng cân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (p1:Population {name:"chỉ khoảng 32% phụ nữ đạt mức tăng cân khuyến cáo", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (p2:Population {name:"21% dưới mức", layer:"Population"})
MERGE (p2)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p2)

MERGE (p3:Population {name:"48% vượt mức", layer:"Population"})
MERGE (p3)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p3)

// ===== Article 168 | Chunk 4 | Tăng cân khi thai kỳ =====
MERGE (s:Topic {name:"Tăng cân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"gây sinh con nhẹ cân", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"khó bú", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"tăng nguy cơ bệnh", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"chậm phát triển", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"gây sinh con to", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"biến chứng sinh", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

MERGE (comp7:Complication {name:"tăng nguy cơ sinh mổ", layer:"Complication"})
MERGE (comp7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp7)

MERGE (comp8:Complication {name:"béo phì cho mẹ và bé", layer:"Complication"})
MERGE (comp8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp8)

// ===== Article 168 | Chunk 5 | Tăng cân khi thai kỳ =====
MERGE (s:Topic {name:"Tăng cân", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"theo dõi cân nặng thường xuyên, đặt mục tiêu với bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ăn chế độ cân bằng: ngũ cốc, rau, trái cây, sữa ít béo, protein nạc", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hạn chế đường và chất béo rắn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"bổ sung calo hợp lý: không thêm calo 3 tháng đầu, 340 kcal/ngày 3 tháng thứ hai, 450 kcal/ngày 3 tháng cuối", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"duy trì 150 phút hoạt động aerobic cường độ vừa/tuần, có thể chia thành nhiều lần 10 phút", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tham khảo bác sĩ về các hoạt động cần hạn chế", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 169 | Chunk 1 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cho dù chế độ ăn lành mạnh đã cung cấp nhiều vitamin và khoáng chất, phụ nữ mang thai hoặc dự định mang thai cần bổ sung acid folic để giảm nguy cơ dị tật bẩm sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bổ sung vitamin D cũng được khuyến cáo", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tránh dầu gan cá hoặc thực phẩm bổ sung chứa vitamin A (retinol) do thừa vitamin A có thể gây hại cho thai nhi", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 169 | Chunk 2 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cần uống 400 mcg acid folic mỗi ngày từ trước khi mang thai đến tuần 12 để ngăn ngừa khuyết tật ống thần kinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"có thể bổ sung từ thực phẩm giàu folate (rau xanh, ngũ cốc, bơ thực vật)", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a2:Advice {name:"thai kỳ nguy cơ cao có thể cần 5 mg/ngày, cần tham khảo ý kiến bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 169 | Chunk 3 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cần 10 mcg (400 IU) mỗi ngày để duy trì xương, răng và cơ khỏe mạnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"có trong ánh sáng mặt trời, dầu cá, trứng, thịt đỏ và thực phẩm bổ sung", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"người có da tối màu hoặc ít phơi nắng cần cân nhắc bổ sung, tham khảo bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 169 | Chunk 4 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thiếu sắt gây mệt mỏi và thiếu máu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nguồn thực phẩm giàu sắt: thịt nạc, rau xanh, trái cây khô, các loại hạt, đậu phộng, ngũ cốc bổ sung sắt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"khi nồng độ sắt thấp, bác sĩ có thể kê viên sắt bổ sung", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 169 | Chunk 5 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vitamin c: bảo vệ tế bào và hỗ trợ phát triển khỏe mạnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"có trong cam, nước cam, ớt xanh/đỏ, dâu tây, lý chua đen, bông cải xanh, cải brussels, khoai tây", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"chế độ ăn cân bằng thường đủ lượng vitamin c cần thiết", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 169 | Chunk 6 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"canxi: quan trọng cho xương và răng thai nhi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nguồn thực phẩm: sữa, phô mai, sữa chua, rau xanh (xà lách rocket, cải xoong, cải kale), đậu hũ, sữa đậu nành bổ sung canxi, bột mì giàu dinh dưỡng, cá có xương ăn được", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 169 | Chunk 7 | Vitamin, thực phẩm chức năng và dinh dưỡng trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin, thực phẩm chức năng và dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chế độ ăn chay đa dạng và cân bằng thường cung cấp gần đủ dinh dưỡng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"sắt và vitamin B12 là hai vi chất khó cung cấp đủ", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"cần thảo luận với bác sĩ và chuyên gia dinh dưỡng để đảm bảo đủ dinh dưỡng cho mẹ và bé", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 1 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"Vitamin A: tan trong dầu, quan trọng với chức năng thị lực, tổng hợp glycoprotein, tăng trưởng và biệt hóa tế bào.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"Có trong rau xanh, củ, quả màu vàng cam.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"Nhu cầu RDA: 770 mcg khi mang thai.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"Không khuyến cáo bổ sung thường quy; liều >15.000 IU/ngày có nguy cơ dị tật bẩm sinh.", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"Alpha-carotene là tiền chất an toàn.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 2 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"vitamin b1 (thiamine): tan trong nước, tham gia chuyển hóa carbohydrate", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"nguồn: sữa, hạt thô", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhu cầu: 1,4 mg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân đối cung cấp đủ, không cần bổ sung thường quy, trừ nôn nghén nặng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 3 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"Vitamin B2 (riboflavin): tan trong nước, giải phóng năng lượng. Có trong rau xanh, sữa, trứng, pho mát, cá. Nhu cầu: 1,4 mg khi mang thai.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"Chế độ ăn cân đối đủ nhu cầu, không cần bổ sung thường quy.", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 4 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"quan trọng trong chuyển hóa protein, carbohydrate, lipid và tổng hợp hồng cầu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"Vitamin B6 (pyridoxine): tan trong nước", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"Có trong rau củ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"Nhu cầu: 1,9 mg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"Chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 5 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"vai trò của vitamin B12 trong thai kỳ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"vitamin B12 (cobalamin) tan trong nước", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"cần cho tổng hợp DNA, phân chia tế bào, hình thành hồng cầu và hệ thần kinh", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"có trong protein động vật", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nhu cầu: 2,6 mcg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 6 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vitamin c (axit ascorbic): tan trong nước, chống gốc tự do, hỗ trợ hình thành collagen, hấp thu sắt. có trong trái cây và rau củ.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhu cầu: 85 mg khi mang thai.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân đối đủ, không cần bổ sung thường quy.", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 7 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vitamin d: tan trong dầu, có trong cá, sữa bổ sung, cần tiếp xúc tia cực tím", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"thiếu vitamin d liên quan thiểu sản men răng", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhu cầu: 5 mcg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"không khuyến cáo sàng lọc thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 8 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"Vitamin E: tan trong dầu, chất chống oxy hóa, có trong protein và chất béo động vật", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"Nhu cầu: 15 mg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"Chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 9 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"cần tổng hợp các yếu tố đông máu VII, IX, X", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"tan trong dầu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"có trong rau xanh, cà chua, sữa, trứng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nhu cầu: 90 mcg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (t1:Treatment {name:"tiêm bắp bổ sung cho trẻ sau sinh", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 10 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"axit folic là vitamin tan trong nước, quan trọng cho tổng hợp DNA, phân chia tế bào", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"axit folic có trong ngũ cốc bổ sung, đậu khô, rau xanh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"thiếu axit folic liên quan thiếu máu hồng cầu khổng lồ mẹ", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"thiếu axit folic liên quan dị tật ống thần kinh thai nhi", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhu cầu axit folic khi mang thai là 0,6 mg", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"bổ sung 0,4-0,8 mg axit folic hàng ngày trước và trong thai kỳ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"bổ sung 4 mg axit folic mỗi ngày cho thai kỳ nguy cơ cao", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"FDA bắt buộc bổ sung folat vào ngũ cốc và bột ngô", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 170 | Chunk 11 | Vitamin trong thai kỳ =====
MERGE (s:Topic {name:"Vitamin", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"kiểm soát giải phóng năng lượng từ tế bào", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"tan trong nước", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"có trong thịt gia cầm, cá, hạt", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (comp1:Complication {name:"thiếu niacin dẫn đến Pellagra", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (det3:Detail {name:"nhu cầu: 18 mg khi mang thai", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (a1:Advice {name:"chế độ ăn cân đối đủ, không cần bổ sung thường quy", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 171 | Chunk 1 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ăn kiêng trong thai kỳ có thể trùng với mùa chay, Ramadan hoặc Shivaratri", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"ăn kiêng trong thai kỳ có thể ảnh hưởng lâu dài đến em bé", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"đau đầu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"kiệt sức", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"nhiễm toan", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (sym4:Symptom {name:"chóng mặt", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym4)
MERGE (sym4)-[:CONTEXT]->(tk)

MERGE (sym5:Symptom {name:"mất nước", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym5)
MERGE (sym5)-[:CONTEXT]->(tk)

// ===== Article 171 | Chunk 2 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"trẻ sơ sinh nhẹ cân do thiếu dinh dưỡng", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"cơ quan phát triển có thể suy yếu vĩnh viễn", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"nguy cơ bệnh thận và đái tháo đường típ 2", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"thiếu dinh dưỡng cũng có thể tăng cortisol, dẫn đến suy giảm nhận thức ở trẻ", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

// ===== Article 171 | Chunk 3 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai nên tránh nhịn ăn, đặc biệt mùa hè", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"luật hồi giáo cho phép bỏ nhịn ăn và bù bằng từ thiện", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ăn kiêng ngắt quãng có thể gây sụt cân, nguy cơ cao hơn lợi ích", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 171 | Chunk 4 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"uống nhiều nước lọc và nước ép trái cây", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh ăn vội thực phẩm giàu năng lượng khi dạ dày rỗng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ăn 2-3 loại hoa quả giàu đường tự nhiên và khoáng chất", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"uống sữa và nước dừa", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tránh đi bộ đường dài và hoạt động mạnh", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"chú ý dấu hiệu cơ thể bất thường", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tránh đồ ngọt và caffein", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"giữ bình tĩnh, tránh căng thẳng", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

// ===== Article 171 | Chunk 5 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hạn chế chất gây nghiện, caffeine, soda, rượu, thuốc lá 1-2 tuần trước", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"giảm đường tinh luyện, chất béo, bánh kẹo, thịt, sữa", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tăng rau củ, trái cây tươi", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"ngủ đủ giấc", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"khám sức khỏe tổng quát, theo dõi đường huyết", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"điều chỉnh giờ làm việc hoặc làm tại nhà nếu cần", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 171 | Chunk 6 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"tăng cân đột ngột", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"giảm cân đột ngột", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"đi tiểu ít", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (s4:Symptom {name:"nước tiểu sẫm", layer:"Symptom"})
MERGE (s4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s4)

MERGE (s5:Symptom {name:"táo bón", layer:"Symptom"})
MERGE (s5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s5)

MERGE (s6:Symptom {name:"khó tiêu", layer:"Symptom"})
MERGE (s6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s6)

MERGE (s7:Symptom {name:"nhức đầu", layer:"Symptom"})
MERGE (s7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s7)

MERGE (s8:Symptom {name:"hôn mê", layer:"Symptom"})
MERGE (s8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s8)

MERGE (s9:Symptom {name:"sốt", layer:"Symptom"})
MERGE (s9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s9)

MERGE (s10:Symptom {name:"buồn nôn", layer:"Symptom"})
MERGE (s10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s10)

MERGE (s11:Symptom {name:"nôn", layer:"Symptom"})
MERGE (s11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s11)

MERGE (s12:Symptom {name:"giảm cử động thai", layer:"Symptom"})
MERGE (s12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s12)

MERGE (s13:Symptom {name:"dấu hiệu chuyển dạ", layer:"Symptom"})
MERGE (s13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s13)

MERGE (a1:Advice {name:"nếu xuất hiện dấu hiệu cảnh báo, ngừng ăn kiêng ngay", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 171 | Chunk 7 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn nhiều loại thức ăn và đồ uống lành mạnh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"trong Ramadan dùng bữa Suhoor và Iftar", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"bao gồm carbohydrate phức hợp, thực phẩm giàu chất xơ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"hạn chế đồ ngọt", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"chọn thực phẩm lành mạnh thay thực phẩm chế biến sẵn", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"bổ sung protein từ trứng, thịt, cá, phomai, nấm, đậu", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"uống nhiều nước và nước ép, tránh caffein", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 171 | Chunk 8 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu còn phân vân, khám tổng quát và hỏi bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"xin lời khuyên từ linh mục hoặc trưởng đạo Hồi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"thử ăn kiêng 1-2 ngày để đánh giá khả năng duy trì", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu không thể, xem xét biện pháp thay thế nhẹ nhàng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"ăn kiêng gián đoạn như chế độ Daniel có thể thử nếu sức khỏe đủ, đặc biệt với người ăn chay", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"loại bỏ dần thực phẩm động vật trước khi ăn chay hoàn toàn", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 171 | Chunk 9 | Ăn kiêng trong thai kỳ =====
MERGE (s:Topic {name:"Ăn kiêng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phải hỏi ý kiến bác sĩ trước khi quyết định ăn kiêng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"quyết định không đúng trong thai kỳ có thể gây hại cho sức khỏe mẹ và thai nhi", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 173 | Chunk 1 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"vai trò của magnesium trong thai kỳ: nhu cầu magnesium tăng khi mang thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"magnesium là khoáng chất thiết yếu, duy trì nồng độ glucose máu, hiệp đồng với canxi giúp xương chắc khỏe, điều hòa cholesterol và nhịp tim", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"thiếu magnesium có thể dẫn tới tiền sản giật, sinh non, tử vong sơ sinh, dị tật bẩm sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 173 | Chunk 2 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"giữ cơ tử cung không co trước tuần 35", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"giảm nguy cơ loãng xương", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"giảm chuột rút", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"giảm căng thẳng và mất ngủ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (app5:Application {name:"hỗ trợ sinh đẻ nhẹ nhàng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app5)
MERGE (app5)-[:CONTEXT]->(tk)

MERGE (app6:Application {name:"giảm buồn nôn", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app6)
MERGE (app6)-[:CONTEXT]->(tk)

MERGE (app7:Application {name:"điều trị đau nửa đầu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app7)
MERGE (app7)-[:CONTEXT]->(tk)

MERGE (app8:Application {name:"giảm nguy cơ bại não khi bổ sung Magnesium sulfat cho thai phụ nguy cơ sinh non", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app8)
MERGE (app8)-[:CONTEXT]->(tk)

// ===== Article 173 | Chunk 3 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"bổ sung magnesium giúp phát triển bào thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"cải thiện tuần hoàn bào thai", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"trẻ sơ sinh có chu kỳ giấc ngủ tốt hơn", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"khuyến cáo hằng ngày: 350-360mg, tùy độ tuổi", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"thiếu magnesium do nôn, buồn nôn", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"cần bổ sung qua thực phẩm giàu magnesium và theo chỉ định bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 173 | Chunk 4 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thực phẩm giàu magnesium bao gồm hạnh nhân, rau bina, hạt điều, đậu phộng, ngũ cốc, sữa đậu nành, đậu đen, đậu nành nhật bản, bơ đậu phộng, bánh mì lúa mì nguyên chất, bơ, khoai tây, gạo, sữa chua, ngũ cốc tăng cường, chuối, cá hồi, cá halibut, ức gà, thịt bò, bông cải xanh, táo, cà rốt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"lên thực đơn dựa trên các thực phẩm này để cung cấp đủ magnesium", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 173 | Chunk 5 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thai phụ chỉ nên bổ sung nếu chế độ ăn không cung cấp đủ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"không tự ý dùng thuốc", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (comp1:Complication {name:"bổ sung quá liều có thể gây tiêu chảy", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"bổ sung quá liều có thể gây mất nước", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"bổ sung quá liều có thể gây đau dạ dày", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"bổ sung quá liều có thể gây tương tác thuốc (kháng sinh, huyết áp, chẹn kênh canxi, đái tháo đường)", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"quá liều nghiêm trọng: nôn liên tục", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"quá liều nghiêm trọng: rối loạn nhịp tim", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

MERGE (comp7:Complication {name:"quá liều nghiêm trọng: khó thở", layer:"Complication"})
MERGE (comp7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp7)

MERGE (comp8:Complication {name:"quá liều nghiêm trọng: yếu cơ", layer:"Complication"})
MERGE (comp8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp8)

MERGE (comp9:Complication {name:"quá liều nghiêm trọng: hạ huyết áp", layer:"Complication"})
MERGE (comp9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp9)

MERGE (comp10:Complication {name:"quá liều nghiêm trọng: lơ mơ", layer:"Complication"})
MERGE (comp10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp10)

// ===== Article 173 | Chunk 6 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"dạng viên uống để nhuận tràng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"dung dịch tiêm tĩnh mạch hoặc bắp để hạ huyết áp, giãn mạch, giảm trương lực tử cung", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"chỉ dùng theo chỉ định bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"không khuyến cáo 3 tháng đầu thai kỳ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"tác dụng phụ nếu dùng dài: suy hô hấp, giảm oxy thai nhi, kéo Canxi khỏi mô xương gây gãy xương trẻ sơ sinh", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 173 | Chunk 7 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"Magnesium citrate: Muối Magnesium dạng nhuận tràng, được FDA chấp nhận, nguy cơ C. Dùng theo hướng dẫn bác sĩ.", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"Magnesium oxit: An toàn khi kê đơn, dùng để bổ sung hoặc nhuận tràng, không dùng dài hạn.", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"Magnesium hydroxit: Không FDA chấp thuận.", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"Magnesium malat, glycinat: Chỉ dùng khi lợi ích > rủi ro.", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

MERGE (t5:Treatment {name:"Dầu Magnesium: An toàn, hấp thụ qua da, giúp điều trị tiền sản giật, không đi vào tiêu hóa, dùng bôi hoặc tắm.", layer:"Treatment"})
MERGE (t5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t5)

// ===== Article 173 | Chunk 8 | Magnesium trong thai kỳ =====
MERGE (s:Topic {name:"Magnesium", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"kiểm tra tất cả các chất bổ sung Magnesium để không vượt quá giới hạn khuyến cáo hàng ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bổ sung nên dựa trên nhu cầu thực tế, chế độ ăn và chỉ dẫn bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 174 | Chunk 1 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"rau cải xoăn có nhiều canxi hơn sữa và thường dễ hấp thu hơn, làm cho nó trở thành một nguồn canxi tuyệt vời", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 174 | Chunk 2 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đậu không chỉ giàu protein, nó còn là một nguồn canxi tuyệt vời", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"thực đơn với đậu hầm trở thành một cách nhanh chóng và dễ dàng cho một bữa ăn dành cho thai phụ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

// ===== Article 174 | Chunk 3 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bánh táo vụn với hạt phỉ: bạn có biết có đến 114mg canxi trong mỗi 100 gam hạt phỉ? món ăn ngon miệng này là một cách giải quyết tuyệt vời mỗi khi bạn thèm ăn.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 174 | Chunk 4 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ngũ cốc yến mạch với táo và hạt phỉ là một sự lựa chọn tốt cho bữa ăn sáng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"kết hợp với sữa chua, nó là một nguồn canxi tốt để bắt đầu ngày mới của bạn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 174 | Chunk 5 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trứng rán phô mai với bông cải xanh: công thức này kết hợp cả canxi của bông cải xanh và pho mát để mang lại một bữa ăn bổ dưỡng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"lưu ý rằng pho mát mềm không được dùng trong thời kỳ mang thai do mối đe dọa nhiễm listeria, nhưng công thức này cho phép sử dụng một loạt các loại pho mát thay thế", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 174 | Chunk 6 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sự kết hợp giữa hạt Chia (một muỗng canh có chứa nhiều canxi hơn một cốc sữa), sữa và yoghurt làm nên một ly sinh tố chắc chắn là người thắng cuộc nếu bất kì phụ nữ có thai nào đang tìm kiếm một nguồn giàu canxi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 174 | Chunk 7 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"sữa chua dâu đông lạnh: dễ làm, món tráng miệng đông lạnh này là một giải pháp hoàn hảo cho ngày dài nắng nóng trong mùa hè, và bổ sung canxi cho bạn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 174 | Chunk 8 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sushi thường được khuyên là không nên dùng cho phụ nữ mang thai, nhưng miễn là bạn sơ chế cá sống và tự nấu, thì không có lí do gì để tránh nó cả", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thực tế, rong biển là một nguồn canxi tuyệt vời, vì vậy tự tay bạn cuộn rong biển với bất cứ thứ gì bạn thích sẽ tạo ra một bữa ăn đơn giản, khỏe mạnh và dễ dàng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 174 | Chunk 9 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (d1:Detail {name:"sinh tố xanh được làm với rau bina, là một loại rau có hàm lượng canxi cao, smoothies thực sự là một thực phẩm tốt cho sức khỏe", layer:"Detail"})
MERGE (d1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(d1)

MERGE (d2:Detail {name:"thêm vào hạt chia và sử dụng yoghurt hoặc sữa chua thay cho nước ép táo thậm chí còn có nhiều canxi hơn", layer:"Detail"})
MERGE (d2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(d2)

// ===== Article 174 | Chunk 10 | Thực phẩm giàu canxi cho phụ nữ thai kỳ =====
MERGE (s:Topic {name:"Thực phẩm giàu canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sữa chua là người bạn tốt nhất nếu bạn đang cố gắng tăng lượng canxi của mình", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"những loại sữa chua với quả berry (quả mọng) ngon tuyệt vời này sẽ rất hoàn hảo cho bạn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 175 | Chunk 1 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"canxi không chỉ là thành phần tạo xương mà còn đóng vai trò quan trọng trong việc duy trì cho mô cơ khỏe mạnh và đảm bảo chức năng của hệ thần kinh", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (advice1:Advice {name:"bổ sung đủ canxi trong thai kì là việc làm cần thiết cho sự phát triển của thai nhi", layer:"Advice"})
MERGE (advice1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(advice1)

// ===== Article 175 | Chunk 2 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"canxi cần cho răng và xương khỏe mạnh, cũng như đóng một vai trò quan trọng trong chức năng thần kinh, mô cơ, đông máu, chức năng tim và hoạt động của enzym", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"canxi điều hòa sự co cơ (giống như nhịp tim) và tham gia giải phóng một số hormon và enzym", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 175 | Chunk 3 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"lí do bạn cần có đủ một lượng canxi thích hợp thông qua chế độ ăn rất quan trọng bởi vì khi cơ thể bạn không nhận đủ canxi thông qua việc ăn uống, nó sẽ bắt đầu lấy canxi từ xương", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"nếu bạn thiếu canxi trong một thời gian dài, xương của bạn sẽ trở nên giòn và yếu, dẫn đến các rối loạn nghiêm trọng như loãng xương", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 175 | Chunk 4 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"các nghiên cứu cho thấy 1000 ngày đầu tiên trong cuộc đời của một em bé – tính từ lúc thụ tinh đến hết tuổi thứ 2 – là khoảng thời gian cốt yếu cho sự phát triển của trẻ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"trong thời gian này, em bé đang phát triển những khối cơ bản sẽ hình thành nên sức khỏe trong tương lai", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (comp1:Complication {name:"chế độ dinh dưỡng của mẹ nghèo nàn ảnh hưởng đến cân nặng của trẻ (cân nặng trước sinh) trong bụng mẹ và hiệu quả làm việc của bánh nhau", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"em bé càng nhẹ cân khi sinh càng tăng tỉ lệ mắc bệnh lí tim mạch về sau", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (rf1:RiskFactor {name:"mẹ hút thuốc lá, stress, ma túy, rượu có thể cũng lấy đi sức khỏe lâu dài của em bé trong tương lai", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (comp3:Complication {name:"bào thai suy dinh dưỡng sẽ dẫn đến ưu tiên phát triển một số phần cơ thể và sẽ nhường máu từ những phần thấp hơn để phân phối cho não", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"quá trình này làm thay đổi sự phát triển của các cơ quan chính trong ổ bụng như gan, thận, tụy, những cơ quan đóng vai trò trong việc duy trì đường máu, huyết áp và cholesterol ở trong mức kiểm soát", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

// ===== Article 175 | Chunk 5 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"vai trò giúp con bạn phát triển", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"bổ sung đủ canxi trong giai đoạn đầu đời có thể giúp chống lại bệnh béo phì sau này", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 175 | Chunk 6 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi bạn đang mang thai, nhu cầu canxi của thai nhi sẽ lấy từ chính xương của bạn – canxi sẽ được lấy ra từ xương để hỗ trợ sự phát triển của thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu bạn đang ở độ tuổi vị thành niên, xương của bạn vẫn đang phát triển, nếu bạn mang thai và cho con bú ở giai đoạn này thì nên bổ sung thêm canxi để hỗ trợ sự phát triển của thai cũng như của chính bạn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đối với phụ nữ trên 18 tuổi, lượng canxi cần thiết trong quá trình mang thai tương tự hàm lượng cần thiết cho người trưởng thành", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 175 | Chunk 7 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"lượng canxi hằng ngày cho phụ nữ có thai ở tuổi vị thành niên là 1300 mg", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"lượng canxi hằng ngày cho phụ nữ mang thai trên 18 tuổi là 1000 mg", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 175 | Chunk 8 | Canxi trong thai kỳ =====
MERGE (s:Topic {name:"Canxi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"các loại rong biển như tảo bẹ, wakame và hijiki", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"các loại hạt như hạt phỉ, hạt hồ trăn, hạt vừng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"các loại đậu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"quả vả", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"bông cải xanh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

MERGE (det6:Detail {name:"rau bina", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det6)
MERGE (det6)-[:CONTEXT]->(tk)

MERGE (det7:Detail {name:"đậu hũ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det7)
MERGE (det7)-[:CONTEXT]->(tk)

MERGE (det8:Detail {name:"lá bồ công anh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det8)
MERGE (det8)-[:CONTEXT]->(tk)

MERGE (det9:Detail {name:"ngũ cốc ăn sáng bổ sung canxi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det9)
MERGE (det9)-[:CONTEXT]->(tk)

MERGE (det10:Detail {name:"thức uống bổ sung canxi như sữa đậu nành", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det10)
MERGE (det10)-[:CONTEXT]->(tk)

MERGE (det11:Detail {name:"vỏ trứng nghiền (có thể ở dạng bột được thêm vào thức ăn và nước uống)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det11)
MERGE (det11)-[:CONTEXT]->(tk)

// ===== Article 176 | Chunk 1 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"bổ sung acid folic với liều khuyến cáo 400 micrograms trước và trong mang thai có thể giúp phòng ngừa các khuyết tật bẩm sinh ở não và tủy sống cho em bé của bạn", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

// ===== Article 176 | Chunk 2 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"acid folic là một dạng vitamin b tổng hợp, được gọi là folate", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"folate đóng vai trò rất quan trọng trong sản xuất hồng cầu và giúp cho ống thần kinh phát triển thành não và tủy sống bình thường", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"nguồn thực phẩm chứa acid folic tốt nhất là ngũ cốc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"folate có trong tự nhiên được tìm thấy trong các loại rau có màu xanh và các loại trái cây có múi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 176 | Chunk 3 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nên bắt đầu bổ sung acid Folic khi nào", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"các khuyết tật bẩm sinh thường xuất hiện trong 3-4 tuần đầu tiên của thai kì", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a2:Advice {name:"cần thiết phải bổ sung Folate trong giai đoạn sớm của thai kỳ khi mà não và tủy sống của thai nhi đang trong giai đoạn hình thành", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 176 | Chunk 4 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bác sĩ có thể kê đơn acid Folic", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"Phụ nữ bổ sung acid Folic ít nhất một năm trước khi mang thai làm giảm trên 50% nguy cơ sinh non", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"CDC khuyến cáo nên bắt đầu bổ sung acid folic mỗi ngày tối thiểu 1 tháng trước khi mang thai và trong suốt thai kì", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

// ===== Article 176 | Chunk 5 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nhu cầu sử dụng vitamin trước và trong khi mang thai không giống nhau, bạn có thể cần nhiều hơn hoặc ít hơn so với trước khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 176 | Chunk 6 | Acid folic trong thai kỳ =====
MERGE (s:Topic {name:"Acid folic", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"liều khuyến cáo sử dụng acid folic cho tất cả phụ nữ trong độ tuổi sinh đẻ là 400 mcg mỗi ngày", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chuẩn bị mang thai: 400 mcg", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ba tháng đầu: 400 mcg", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tháng 4-9: 600 mcg", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"trong khi cho con bú: 500 mcg", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 177 | Chunk 1 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bổ sung sắt đặc biệt quan trọng đối với phụ nữ mang thai bị thiếu máu", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"ở những phụ nữ có mức hồng cầu bình thường, bổ sung sắt là một biện pháp dự phòng không cần thiết", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"thai phụ có thể đã nhận được đủ lượng sắt trong chế độ ăn hàng ngày", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

// ===== Article 177 | Chunk 2 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"sắt là một khoáng chất cần thiết cho cơ thể khỏe mạnh, có trong nhiều loại protein và enzyme", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"phần lớn sắt trong cơ thể có trong hemoglobin, huyết sắc tố", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"hemoglobin vận chuyển oxy đến tất cả mô và cơ quan trong cơ thể", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"nếu không có đủ sắt thì lượng hemoglobin trong máu sẽ giảm, dẫn đến giảm cung cấp oxy cho các tế bào và cơ quan", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"nồng độ hemoglobin giảm thấp được coi là thiếu máu", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trong các tháng đầu và cuối của thai kỳ, nồng độ hemoglobin > 11g/dl là bình thường", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"từ tháng thứ 3 đến tháng thứ 6 của thai kỳ, nồng độ hemoglobin giảm nhẹ xuống 10,5 g/dl", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 177 | Chunk 4 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"có một số xét nghiệm máu cho phụ nữ trong thai kỳ", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"một trong số đó là đo nồng độ sắt", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"thiếu máu thiếu sắt có thể được phát hiện sớm và điều trị bằng cách bổ sung sắt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 177 | Chunk 5 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"những thực phẩm chứa nhiều sắt: thịt, đặc biệt gan, ngũ cốc nguyên hạt, các loại đậu, rau lá xanh như rau diếp, rau bina, rau mùi tây, rau mầm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"thực phẩm bổ sung sắt tổng hợp có sẵn dạng viên nén hoặc thuốc nhỏ giọt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 177 | Chunk 6 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"thiếu máu thiếu sắt có thể khiến thai phụ mệt mỏi, kiệt sức", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"thiếu máu nặng có thể làm suy yếu hệ miễn dịch, tăng nguy cơ nhiễm trùng", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"thiếu máu nặng có thể làm gia tăng nguy cơ nhẹ cân cho thai nhi", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (det1:Detail {name:"thiếu máu nặng hiếm gặp ở phụ nữ khỏe mạnh với chế độ ăn cân đối", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 177 | Chunk 7 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai có mức hồng cầu bình thường có thể dùng sắt dự phòng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"chỉ khi thiếu máu nặng và kéo dài mới cần liều cao", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (det1:Detail {name:"theo các cơ quan y tế Đức, phụ nữ mang thai và cho con bú cần 20-30 mg sắt mỗi ngày", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (rf1:RiskFactor {name:"người ăn chay khó đạt đủ lượng sắt từ chế độ ăn riêng", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

// ===== Article 177 | Chunk 8 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"hơn 60 nghiên cứu với hơn 30,000 phụ nữ cho thấy, bổ sung 30 mg sắt/ngày cho phụ nữ có giá trị máu bình thường không mang lại lợi ích sức khỏe đáng kể cho mẹ và thai nhi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (det2:Detail {name:"bổ sung 30 mg sắt/ngày cho phụ nữ có giá trị máu bình thường không ảnh hưởng đến sinh non hay nhiễm trùng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 177 | Chunk 9 | Bổ sung sắt trong thai kỳ =====
MERGE (s:Topic {name:"Bổ sung sắt", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"uống 60 mg sắt/ngày giúp giảm nhẹ cân ở 1/100 trẻ, ít cần truyền máu hơn, nhưng tăng nguy cơ phản ứng phụ về tiêu hóa", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"các chuyên gia khuyên có thể bổ sung sắt 1-2 lần/tuần thay vì mỗi ngày để giảm tác dụng phụ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 178 | Chunk 1 | Béo phì và thai kỳ =====
MERGE (s:Disease {name:"Béo phì", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"chỉ số khối cơ thể (BMI, body mass index) là chỉ số được tính dựa trên chiều cao và cân nặng, giúp đánh giá xem một người có bị thiếu cân, đủ cân, quá cân, hoặc béo phì không", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"tính chỉ số khối cơ thể bằng cách chia trọng lượng cơ thể (tính bằng kg) cho bình phương của chiều cao (tính bằng mét)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"một người bị cho là quá cân nếu có chỉ số BMI từ 25 đến 29.9", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"một người bị cho là béo phì nếu có chỉ số BMI trên 30", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

// ===== Article 178 | Chunk 2 | Béo phì và thai kỳ =====
MERGE (s:Disease {name:"Béo phì", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"khuyết tật bẩm sinh sẽ tăng, ví dụ như dị tật về tim, khuyết tật ống thần kinh", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"xét nghiệm trở nên không chính xác khi mẹ có quá nhiều mỡ bụng, việc sử dụng siêu âm kiểm tra cấu trúc thai nhi gặp khó khăn", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"thai to: thai nhi có kích cỡ lớn hơn bình thường, làm tăng nguy cơ sinh khó và sinh mổ", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"sinh non: các bệnh kèm theo béo phì cũng có thể gây sinh non", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"thai chết lưu: chỉ số BMI của mẹ càng cao thì khả năng thai chết lưu càng cao", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (det1:Detail {name:"bảng tăng cân theo BMI: cân nặng trước mang thai, chỉ số BMI, số cân nên tăng (kg)", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"cân nặng bình thường: 18.5 – 24.9, số cân nên tăng: 11 – 15 kg", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"quá cân: 25 – 29.9, số cân nên tăng: 7 – 11 kg", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"béo phì: > 30, số cân nên tăng: 5 – 9 kg", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 178 | Chunk 4 | Béo phì và thai kỳ =====
MERGE (s:Disease {name:"Béo phì", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"huyết áp cao: bắt đầu từ nửa sau thai kỳ, có thể gây biến chứng nghiêm trọng", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"tiền sản giật: chứng bệnh nghiêm trọng cho cả mẹ và bé, có thể gây suy gan, thận, đột quỵ, thậm chí tử vong", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"đái tháo đường thai kỳ: đường huyết cao trong thai kỳ, tăng khả năng thai quá khổ và phải sinh mổ, mẹ và con có nguy cơ cao bị đái tháo đường về sau", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

// ===== Article 178 | Chunk 6 | Đái tháo đường thai kỳ =====
MERGE (s:Disease {name:"Đái tháo đường", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"đái tháo đường hình thành trong thời kỳ mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 178 | Chunk 7 | Béo phì và thai kỳ =====
MERGE (s:Disease {name:"Béo phì", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"kiểm tra cân nặng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục đều đặn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"khám tiền sản thường xuyên", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"giữ cơ thể khỏe mạnh", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"nên tăng cân theo BMI trước mang thai", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"không nên giảm cân trong thai kỳ", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"nếu tăng ít hơn mức khuyến cáo và thai phát triển bình thường, sẽ có lợi", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"nên làm xét nghiệm đái tháo đường thai kỳ khi thừa cân hoặc béo phì", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"bắt đầu tập thể dục từ từ, ví dụ đi bộ 5 phút mỗi ngày, tăng dần tới 30 phút", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"sinh thường vẫn có thể nhưng khó khăn hơn", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (comp1:Complication {name:"béo phì làm tăng khả năng sinh mổ và các biến chứng liên quan", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

// ===== Article 178 | Chunk 8 | Béo phì và thai kỳ =====
MERGE (s:Disease {name:"Béo phì", layer:"Disease"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sau sinh, nên duy trì chế độ ăn và tập thể dục như trước, cho con bú giúp giảm cân nhanh hơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bmi vẫn cao, bác sĩ có thể kê đơn thuốc giảm cân, nhưng không được dùng khi mang thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (t1:Treatment {name:"phẫu thuật giảm cân chỉ áp dụng cho bmi > 40 hoặc 35-39 kèm biến chứng, và nên chờ 12-24 tháng trước khi mang thai sau phẫu thuật", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

// ===== Article 180 | Chunk 1 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn uống đầy đủ khi mang thai không chỉ đơn giản là ăn nhiều hơn. bạn cần cân nhắc đến việc bạn ăn gì.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"cần khoảng 300 calo một ngày – đặc biệt trong giai đoạn sau của thai kỳ, khi thai nhi lớn nhanh – những calo này nên lấy từ thực phẩm giàu dinh dưỡng để phục vụ sự phát triển của thai nhi.", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 180 | Chunk 2 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trung bình, tăng 11-16 kg khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"3,4 kg: trọng lượng trung bình của em bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"3,2 kg: protein dự trữ, chất béo và các chất dinh dưỡng khác", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"1,8 kg: phần máu tăng thêm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"1,8 kg: phần chất dịch khác trong cơ thể", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

MERGE (det6:Detail {name:"0,5 kg: nhau thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det6)
MERGE (det6)-[:CONTEXT]->(tk)

MERGE (det7:Detail {name:"biểu đồ tăng cân có thể khác nhau tuỳ từng người, đặc biệt với thai đôi, thai ba, hoặc tình trạng cân nặng trước khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det7)
MERGE (det7)-[:CONTEXT]->(tk)

// ===== Article 180 | Chunk 3 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi mang thai, những gì bạn ăn và uống là nguồn chất dinh dưỡng chính cho thai nhi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"thức ăn không nên chỉ cung cấp calo mà phải cung cấp chất dinh dưỡng", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"ví dụ, canxi giúp giữ xương và răng chắc khỏe, đồng thời bổ sung cho nhu cầu thai nhi", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"các chất dinh dưỡng khác cũng cần nhiều hơn so với trước khi mang thai", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 180 | Chunk 4 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"một chế độ ăn uống lành mạnh bao gồm protein, carbohydrate, chất béo, vitamin, khoáng chất và nhiều nước", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"ăn đa dạng thực phẩm theo tỷ lệ cân đối là quan trọng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nhãn thực phẩm có thể cho bạn biết chất dinh dưỡng có trong thực phẩm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"chỉ số RDA (Recommended Daily Allowance) cao hơn bình thường khi mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

// ===== Article 180 | Chunk 5 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"dưới đây là một số chất dinh dưỡng phổ biến cần thiết cho bà bầu và nguồn thực phẩm tốt nhất", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (app1:Application {name:"protein: tăng trưởng tế bào và sản xuất máu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"carbohydrate: sản sinh năng lượng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

MERGE (app3:Application {name:"canxi: chắc xương và răng, co cơ, thần kinh", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app3)
MERGE (app3)-[:CONTEXT]->(tk)

MERGE (app4:Application {name:"sắt: sản xuất hồng huyết cầu", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app4)
MERGE (app4)-[:CONTEXT]->(tk)

MERGE (app5:Application {name:"vitamin a: da, thị lực, phát triển xương", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app5)
MERGE (app5)-[:CONTEXT]->(tk)

MERGE (app6:Application {name:"vitamin c: răng lợi, hấp thu sắt", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app6)
MERGE (app6)-[:CONTEXT]->(tk)

MERGE (app7:Application {name:"vitamin b6: hình thành hồng huyết cầu, chuyển hóa", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app7)
MERGE (app7)-[:CONTEXT]->(tk)

MERGE (app8:Application {name:"vitamin b12: hồng huyết cầu, thần kinh", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app8)
MERGE (app8)-[:CONTEXT]->(tk)

MERGE (app9:Application {name:"vitamin d: xương, hấp thu canxi", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app9)
MERGE (app9)-[:CONTEXT]->(tk)

MERGE (app10:Application {name:"axit folic: sản xuất máu, tác động men", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app10)
MERGE (app10)-[:CONTEXT]->(tk)

MERGE (app11:Application {name:"chất béo: tích trữ năng lượng", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app11)
MERGE (app11)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"thịt nạc, cá, thịt gia cầm, lòng trắng trứng, đậu, bơ đậu phộng, đậu phụ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"bánh mì, ngũ cốc, cơm, khoai tây, mì ống, trái cây, rau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"sữa, phô mai, sữa chua, cá mòi/cá hồi xương, rau cải chân vịt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"thịt đỏ nạc, rau cải chân vịt, bánh mì, ngũ cốc nguyên hạt tăng cường chất sắt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

MERGE (det6:Detail {name:"cà rốt, rau lá xanh đậm, khoai lang", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det6)
MERGE (det6)-[:CONTEXT]->(tk)

MERGE (det7:Detail {name:"trái cây họ cam quýt, súp lơ xanh, cà chua, nước ép trái cây", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det7)
MERGE (det7)-[:CONTEXT]->(tk)

MERGE (det8:Detail {name:"thịt lợn, thịt hun khói, ngũ cốc nguyên cám, chuối", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det8)
MERGE (det8)-[:CONTEXT]->(tk)

MERGE (det9:Detail {name:"thịt, cá, gia cầm, sữa", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det9)
MERGE (det9)-[:CONTEXT]->(tk)

MERGE (det10:Detail {name:"sữa, sản phẩm sữa, ngũ cốc, bánh mì", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det10)
MERGE (det10)-[:CONTEXT]->(tk)

MERGE (det11:Detail {name:"rau lá xanh, trái cây vàng sẫm, đậu, đậu hà lan, hạt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det11)
MERGE (det11)-[:CONTEXT]->(tk)

MERGE (det12:Detail {name:"thịt, sản phẩm sữa, các loại hạt, bơ, dầu thực vật (giới hạn 30% calo hàng ngày)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det12)
MERGE (det12)-[:CONTEXT]->(tk)

// ===== Article 180 | Chunk 6 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các chất dinh dưỡng quan trọng khác: axit folic giúp ngăn ngừa khuyết tật ống thần kinh (spina bifida) trong giai đoạn đầu thai kỳ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"canxi giúp ngăn ngừa mất xương mẹ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"người ăn chay cần đảm bảo bổ sung protein, vitamin b12 và d", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tham khảo ý kiến chuyên gia dinh dưỡng để lập thực đơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 180 | Chunk 7 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thèm ăn khi mang thai thường kéo dài khoảng 3 tháng đầu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"một số phụ nữ thèm chocolate, thức ăn cay, trái cây, khoai tây nghiền, ngũ cốc, bánh mì trắng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"một số thèm vật không ăn được gọi là pica (đất sét, bột bắp) – nguy hiểm cho mẹ và thai nhi", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 180 | Chunk 8 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"không có mức độ đồ uống có cồn nào an toàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tránh một số loại vitamin, thảo dược nếu chưa tham khảo bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hạn chế caffein – uống nhiều cà phê, trà, soda hàng ngày có thể gây tăng nguy cơ sẩy thai", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tránh thực phẩm gây bệnh listeriosis, toxoplasmosis", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tránh phô mai mềm chưa tiệt trùng, sữa chưa tiệt trùng, trứng sống, thịt sống hoặc chưa chín, cá và động vật vỏ sống, thịt chế biến, cá chứa thủy ngân cao (cá mập, cá kiếm, cá thu, cá kình)", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 180 | Chunk 9 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"chứa omega-3, protein, ít chất béo bão hòa", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hạn chế các loại cá thủy ngân cao", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"FDA khuyến cáo cá ngừ đóng hộp/light tuna không quá 6 ounces (170 g) mỗi tuần", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"các loại cá và động vật vỏ khác có thủy ngân thấp ăn tối đa 5,5 kg (2 bữa trung bình) mỗi tuần", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tham khảo ý kiến bác sĩ nếu cần", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 180 | Chunk 10 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"giải quyết vấn đề thường gặp: táo bón do sắt hoặc vitamin trước sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ăn nhiều chất xơ (20-30 g/ngày) từ trái cây, rau, bánh mì nguyên cám, ngũ cốc", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu cần viên bổ sung chất xơ, hỏi bác sĩ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"không tự dùng thuốc nhuận tràng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"tập thể dục giúp ngăn ngừa táo bón", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 180 | Chunk 11 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh thực phẩm chiên, súp lơ trắng/xanh, rau cải chân vịt nếu gây khó chịu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"uống nước, ăn bữa nhỏ thường xuyên", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"uống vitamin trước khi đi ngủ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"ăn bữa sáng nhẹ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"ngậm kẹo cứng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 180 | Chunk 12 | Ăn uống đầy đủ khi thai kỳ =====
MERGE (s:Topic {name:"Ăn uống", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ăn đa dạng từ các nhóm thực phẩm theo tỷ lệ khuyến cáo", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu buồn nôn/biếng ăn, không quá lo lắng – thai nhi nhận được chất dinh dưỡng trước tiên", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (det1:Detail {name:"người cân nặng bình thường tăng 16 kg (25-35 pound) trong thai kỳ: 2,7 kg (4-6 pound) ba tháng đầu, 0,5 kg/tuần ba tháng giữa và ba tháng cuối", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a3:Advice {name:"tập trung vào ăn đa dạng và cân đối thực phẩm bổ dưỡng để mẹ và bé khỏe mạnh", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 181 | Chunk 1 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"lập kế hoạch chế độ dinh dưỡng lành mạnh trong thai kỳ không khó", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"trang web www.choosemyplate.gov giúp học cách lựa chọn thực phẩm lành mạnh cho mỗi bữa ăn, phù hợp với phụ nữ mang thai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 181 | Chunk 2 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"với Myplate, bạn có thể lập chế độ dinh dưỡng cá nhân và kế hoạch hoạt động thể chất bằng chương trình 'SuperTracker'", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"chương trình dựa trên 5 nhóm thực phẩm và tính lượng cần ăn hàng ngày theo chiều cao, cân nặng, ngày dự kiến sinh, và hoạt động thể chất", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 181 | Chunk 3 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"năm nhóm thực phẩm: ngũ cốc (bánh mì, mì ống, yến mạch, bánh bắp), hoa quả (tươi, đông lạnh, đóng hộp, khô, nước ép 100%), rau (sống, nấu chín, đông lạnh, đóng hộp, sấy, nước ép 100%), protein (thịt, gia cầm, hải sản, đậu, trứng, sản phẩm đậu nành, quả hạch), bơ sữa (sữa, phô mai, sữa chua, kem).", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 4 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"dầu và chất béo cung cấp năng lượng và giúp tạo các cơ quan của thai nhi và nhau thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nên lấy hầu hết từ thực vật", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"hạn chế mỡ cứng như mỡ động vật và thực phẩm chế biến sẵn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 5 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vitamin và khoáng chất đóng vai trò quan trọng trong chức năng cơ thể", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a1:Advice {name:"phụ nữ mang thai cần bổ sung thêm sắt và acid folic", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"vitamin bổ sung trước khi sinh đảm bảo nhận đủ lượng cần thiết", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"chế độ ăn đa dạng cũng cung cấp vitamin và khoáng chất cần thiết", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 181 | Chunk 6 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"acid folic (folate) quan trọng cho phụ nữ mang thai: 400 mcg/ngày ít nhất 1 tháng trước mang thai, 600 mcg/ngày trong thai kỳ giúp ngăn ngừa dị tật ống thần kinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"khó đủ từ thực phẩm, nên bổ sung vitamin có acid folic", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 181 | Chunk 7 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"sắt giúp tạo hồng cầu mang oxy", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"thai kỳ cần gấp đôi lượng sắt so với người không mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"liều khuyến cáo: 27 mg/ngày", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nguồn sắt: thịt nạc đỏ, gia cầm, cá, đậu, ngũ cốc tăng cường, nước mận", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"ăn kèm vitamin C giúp hấp thu sắt tốt hơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 8 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"canxi cần thiết để tạo xương và răng cho bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"phụ nữ ≥19 tuổi cần 1000 mg/ngày; 14-18 tuổi cần 1300 mg/ngày", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nguồn: sữa, phô mai, sữa chua, bông cải xanh, rau xanh, cá mòi, hoặc bổ sung canxi nếu cần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 9 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"vitamin d cùng canxi giúp xương và răng phát triển, cần thiết cho thị lực và da khỏe", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"phụ nữ mang thai cần 600 iu/ngày", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nguồn: sữa tăng cường vitamin d, cá béo, tiếp xúc ánh sáng mặt trời", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 10 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tăng cân khuyến cáo dựa trên bmi trước mang thai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (advice1:Advice {name:"bình thường: 12-15 kg", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice1)
MERGE (advice1)-[:CONTEXT]->(tk)

MERGE (advice2:Advice {name:"nhẹ cân: tăng nhiều hơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice2)
MERGE (advice2)-[:CONTEXT]->(tk)

MERGE (advice3:Advice {name:"thừa cân/béo phì: tăng ít hơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice3)
MERGE (advice3)-[:CONTEXT]->(tk)

// ===== Article 181 | Chunk 11 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"phụ nữ thừa cân/béo phì có nguy cơ tiểu đường thai kỳ", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

MERGE (rf2:RiskFactor {name:"phụ nữ thừa cân/béo phì có nguy cơ huyết áp cao", layer:"RiskFactor"})
MERGE (rf2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)

MERGE (rf3:RiskFactor {name:"phụ nữ thừa cân/béo phì có nguy cơ tiền sản giật", layer:"RiskFactor"})
MERGE (rf3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)

MERGE (rf4:RiskFactor {name:"phụ nữ thừa cân/béo phì có nguy cơ sinh non", layer:"RiskFactor"})
MERGE (rf4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)

MERGE (rf5:RiskFactor {name:"phụ nữ thừa cân/béo phì có nguy cơ mổ lấy thai", layer:"RiskFactor"})
MERGE (rf5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf5)

MERGE (comp1:Complication {name:"em bé có nguy cơ dị tật bẩm sinh", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"em bé có nguy cơ thai to (macrosomia)", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"em bé có nguy cơ béo phì trẻ em", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

// ===== Article 181 | Chunk 12 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tiêu thụ <200 mg/ngày khi mang thai được xem là an toàn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (d1:Detail {name:"cá và động vật vỏ chứa omega-3, quan trọng cho phát triển não bộ", layer:"Detail"})
MERGE (d1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(d1)

MERGE (a2:Advice {name:"ăn ≥2 khẩu phần cá hoặc động vật vỏ (200-300 g) mỗi tuần trong thai kỳ hoặc cho con bú", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 181 | Chunk 13 | Dinh dưỡng trong quá trình thai kỳ =====
MERGE (s:Topic {name:"Dinh dưỡng", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tránh cá thủy ngân cao (cá mập, cá kiếm, cá thu, cá kình)", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hạn chế cá ngừ trắng <150 g/tuần", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"ưu tiên cá và động vật vỏ như tôm, cá hồi, cá da trơn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)


// ===== Article 199 | Chunk 1 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khó khăn trong đời sống tình dục sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"phụ nữ có nhiều lý do gặp khó khăn trong đời sống tình dục", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"ham muốn tình dục và năng lượng sẽ trở lại, cần thời gian", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 199 | Chunk 2 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thời điểm an toàn để quan hệ tình dục là khoảng bốn tuần sau khi sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"hầu hết nhân viên y tế khuyên đợi khoảng bốn tuần sau khi sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"không an toàn nếu quan hệ tình dục có sự xâm nhập ít nhất hai tuần sau sinh do chảy máu và nguy cơ nhiễm trùng tử cung", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"nếu có vết khâu (mổ đẻ, rách/cắt tầng sinh môn), nên đợi sau lần khám 6 tuần sau sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"sau khi được đồng ý, có thể bắt đầu quan hệ tình dục khi cảm thấy sẵn sàng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

// ===== Article 199 | Chunk 3 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ham muốn tình dục thấp trong vài tuần hoặc tháng sau sinh là bình thường do kiệt sức, đau đớn và quá tải", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"cơ thể cần thời gian chữa lành", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"suy giảm dịch bôi trơn âm đạo trong 4-6 tuần đầu do giảm estrogen, trầm trọng hơn ở phụ nữ cho con bú", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"âm đạo sẽ ẩm ướt trở lại khi dừng cho con bú", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"có thể sử dụng gel bôi trơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"phụ nữ có thể cảm thấy kém hấp dẫn, tự ti về cơ thể thay đổi, sợ mang thai lại, hoặc vật lộn với baby blues/trầm cảm sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

// ===== Article 199 | Chunk 4 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"âm đạo sẽ kéo dài ra sau khi sinh nhưng sẽ co lại và săn chắc trong vài ngày", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"kích thước ban đầu phụ thuộc vào di truyền, kích thước em bé, số con và việc thực hiện bài tập Kegel", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 199 | Chunk 5 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"hãy thực hiện chậm rãi, tận hưởng cơ thể nhau mà không đặt kỳ vọng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tìm thời điểm không vội vàng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nếu chưa sẵn sàng quan hệ, thử kích thích bằng tay hoặc miệng xung quanh âm vật, tránh vùng đáy chậu và âm đạo nếu còn đau", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"khi sẵn sàng, thử các tư thế kiểm soát độ sâu", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"nếu sinh mổ, làm tình cạnh nhau để không gây áp lực lên vết thương", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"sử dụng chất bôi trơn", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"luôn cho bạn tình biết điều gì thoải mái và điều gì không", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (det1:Detail {name:"nếu bị rách hoặc rạch tầng sinh môn, có thể đau ở vị trí đó", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"độ nhạy cảm với cơn đau có thể giảm nhanh hoặc kéo dài nhiều tháng", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 199 | Chunk 6 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"có thể rụng trứng trở lại bất kỳ lúc nào sau sinh, và có thể mang thai nếu quan hệ tình dục không an toàn trước kỳ kinh nguyệt đầu tiên", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cân nhắc các lựa chọn kiểm soát sinh sản và sử dụng bao cao su cho đến khi có biện pháp tránh thai đáng tin cậy", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"trao đổi với nhân viên y tế về biện pháp tránh thai phù hợp, tùy thuộc vào việc có muốn sinh thêm con và có cho con bú hay không", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 199 | Chunk 7 | Quan hệ tình dục sau sinh =====
MERGE (s:Topic {name:"Quan hệ tình dục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cho con bú có thể ảnh hưởng đến đời sống tình dục", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"ngực có thể không còn là vùng nhạy cảm hoặc quá mềm yếu để chạm vào/kích thích tình dục", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"có thể bị chảy dịch sữa vào thời điểm không tiện (xuống tinh thần) do hormone", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu khó chịu, cho bé bú hoặc vắt sữa trước khi quan hệ", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"việc rò rỉ dịch có thể giảm khi cho con bú ổn định hơn", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"nếu chưa sẵn sàng, hãy cho bản thân thời gian nghỉ ngơi để điều chỉnh thể chất và tinh thần", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tình dục có thể thỏa mãn như trước khi em bé chào đời theo thời gian", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)





// ===== Article 208 | Chunk 1 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"tiền sản giật sau sinh là một tình trạng hiếm gặp, xảy ra khi người mẹ bị cao huyết áp và xuất hiện protein trong nước tiểu sau khi sinh", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"tiền sản giật là một tình trạng tương tự, nhưng xảy ra trong thai kỳ và thường tự khỏi sau khi sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 2 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hầu hết các trường hợp xuất hiện trong vòng 48 giờ sau sinh con", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"đôi khi bệnh phát triển đến 6 tuần hoặc nhiều hơn (6 tuần) sau khi sinh con", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"đây được gọi là tiền sản giật sau sinh muộn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 3 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"tiền sản giật sau sinh cần được điều trị kịp thời", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"nếu không được điều trị, bệnh có thể gây co giật", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"các biến chứng nghiêm trọng khác", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 4 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tiền sản giật sau sinh thường khó tự phát hiện", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"nhiều phụ nữ bị bệnh không có dấu hiệu hoặc triệu chứng trong khi mang thai", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"sau khi sinh, người mẹ phải tập trung vào việc chăm sóc em bé cũng như phục hồi cơ thể mà có thể bỏ qua những dấu hiệu của bệnh", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 5 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tăng huyết áp (trị số huyết áp đạt 140/90 mm Hg trở lên)", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"protein niệu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"đau đầu dữ dội", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (sym4:Symptom {name:"thay đổi thị lực, bao gồm mất thị lực tạm thời, mờ mắt hoặc nhạy cảm với ánh sáng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym4)
MERGE (sym4)-[:CONTEXT]->(tk)

MERGE (sym5:Symptom {name:"đau bụng trên, thường là dưới xương sườn bên phải", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym5)
MERGE (sym5)-[:CONTEXT]->(tk)

MERGE (sym6:Symptom {name:"thiểu niệu (giảm lượng nước tiểu)", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym6)
MERGE (sym6)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 6 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn có các dấu hiệu hoặc triệu chứng của bệnh, hãy liên hệ ngay với bác sĩ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"trong một số trường hợp, bạn có thể cần được nhập viện ngay lập tức", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 208 | Chunk 7 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"nguyên nhân của tiền sản giật sau sinh và tiền sản giật xảy ra trong thai kỳ vẫn chưa được hiểu rõ", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 8 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (rf1:RiskFactor {name:"cao huyết áp trong lần mang thai gần nhất", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)
MERGE (rf1)-[:CONTEXT]->(tk)

MERGE (rf2:RiskFactor {name:"cao huyết áp sau 20 tuần của thai kỳ", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf2)
MERGE (rf2)-[:CONTEXT]->(tk)

MERGE (rf3:RiskFactor {name:"béo phì", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf3)
MERGE (rf3)-[:CONTEXT]->(tk)

MERGE (rf4:RiskFactor {name:"đa thai: sinh đôi, sinh ba hoặc nhiều hơn", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf4)
MERGE (rf4)-[:CONTEXT]->(tk)

MERGE (rf5:RiskFactor {name:"tăng huyết áp mãn tính", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf5)
MERGE (rf5)-[:CONTEXT]->(tk)

MERGE (rf6:RiskFactor {name:"tăng huyết áp không kiểm soát trước khi mang thai", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf6)
MERGE (rf6)-[:CONTEXT]->(tk)

MERGE (rf7:RiskFactor {name:"bệnh tiểu đường: mắc bệnh tiểu đường týp 1 hoặc týp 2", layer:"RiskFactor"})
MERGE (s)-[:HAS_RISK_FACTOR]->(rf7)
MERGE (rf7)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 9 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"sản giật sau sinh: là chứng tiền sản giật sau sinh cùng các cơn co giật", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"bệnh có thể làm tổn thương vĩnh viễn các cơ quan quan trọng gồm não, mắt, gan và thận", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"phù phổi: tình trạng phù phổi đe dọa tính mạng khi chất lỏng dư tràn ngập trong phổi", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"đột quỵ: tai biến mạch máu não xảy ra khi nguồn cung cấp máu cho não bị gián đoạn hoặc giảm nghiêm trọng, làm mất oxy và chất dinh dưỡng của mô não", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"thuyên tắc huyết khối: thuyên tắc huyết khối là tình trạng tắc nghẽn mạch máu do cục máu đông di chuyển từ nơi khác của cơ thể", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"hội chứng HELLP: hội chứng HELLP viết tắt của chứng tán huyết (Hemolysis), tăng men gan (Elevated Liver) và số lượng tiểu cầu thấp (Low Platelet) có thể đe dọa tính mạng", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

MERGE (comp7:Complication {name:"tán huyết là sự phá hủy các tế bào hồng cầu", layer:"Complication"})
MERGE (comp7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp7)

// ===== Article 208 | Chunk 10 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"bác sĩ có thể khuyên bạn nên dùng Aspirin hàm lượng thấp (81mg) để ngăn ngừa tiền sản giật trong lần mang thai tiếp theo", layer:"Prevention"})
MERGE (pr1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_PREVENTION]->(pr1)

MERGE (a1:Advice {name:"đồng thời khuyến khích bạn có một lối sống năng động và thực hiện một chế độ ăn uống lành mạnh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đừng ngại liên hệ với các cơ sở chăm sóc sức khỏe nếu bạn có thắc mắc hoặc lo lắng về sức khỏe trong giai đoạn phục hồi sau khi sinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 208 | Chunk 11 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"nếu đã xuất viện sau khi sinh nhưng bác sĩ nghi ngờ rằng bạn bị tiền sản giật sau sinh, bạn có thể cần nhập viện", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 12 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"chẩn đoán bệnh bằng các xét nghiệm sau: Xét nghiệm máu. Những xét nghiệm này có thể xác định gan và thận có đang hoạt động tốt không và số lượng tiểu cầu có bị giảm hay không, chức năng đông máu tốt hay không", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app1)
MERGE (app1)-[:CONTEXT]->(tk)

MERGE (app2:Application {name:"Phân tích nước tiểu. Bác sĩ có thể chỉ định xét nghiệm mẫu nước tiểu của bạn để xem có protein không, hoặc có thể yêu cầu bạn lấy nước tiểu trong 24 giờ và kiểm tra tổng lượng protein", layer:"Application"})
MERGE (s)-[:HAS_APPLICATION]->(app2)
MERGE (app2)-[:CONTEXT]->(tk)

// ===== Article 208 | Chunk 13 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"tiền sản giật sau sinh có thể được điều trị bằng thuốc, bao gồm: thuốc chống tăng huyết áp (thuốc hạ huyết áp)", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"nếu huyết áp ở mức nguy hiểm, bác sĩ có thể kê thuốc hạ huyết áp cho bạn", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"thuốc ngăn ngừa co giật. magnesium sulfate có thể giúp ngăn ngừa co giật ở phụ nữ có các dấu hiệu và triệu chứng bệnh nghiêm trọng", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"magnesium sulfate thường được dùng trong 24 giờ", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

MERGE (det1:Detail {name:"sau khi điều trị bằng magnesium sulfate, bạn sẽ được theo dõi chặt chẽ huyết áp, nước tiểu và các triệu chứng khác", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 208 | Chunk 14 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"những loại thuốc này được coi là an toàn và có thể sử dụng cho những phụ nữ con bú", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hỏi bác sĩ nếu bạn có bất kỳ thắc mắc nào hoặc có những vấn đề mà bạn không chắc chắn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 208 | Chunk 15 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn bị tiền sản giật sau sinh, bạn có thể cần phải ở lại bệnh viện lâu hơn dự định hoặc được chuyển tuyến. điều này có thể gây thêm căng thẳng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 208 | Chunk 16 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trong giai đoạn này bạn sẽ cần sự giúp đỡ, hỗ trợ từ gia đình và người thân", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hãy trao đổi với bác sĩ để biết cách quản lý tình trạng của mình an toàn đồng thời có thể chăm sóc tốt cho bé", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 208 | Chunk 17 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn vừa mới sinh con và có bất kỳ triệu chứng nào bài viết nhắc đến, hãy liên hệ với bác sĩ ngay lập tức", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 208 | Chunk 18 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tái khám cùng một người thân hoặc người mà bạn tin tưởng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"viết ra các câu hỏi để hỏi bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 208 | Chunk 19 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tình trạng của tôi nghiêm trọng đến mức nào", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"các phương pháp điều trị là gì", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tôi cần làm những loại xét nghiệm nào", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tôi có thể tiếp tục chăm sóc con và nuôi con bằng sữa mẹ không", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"cách giúp tôi có thể kiểm soát tốt nhất các tình trạng sức khỏe khác cùng với chứng tiền sản giật sau sinh", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"những dấu hiệu hoặc triệu chứng nào khiến tôi nên gọi cho bác sĩ hoặc đến bệnh viện", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 208 | Chunk 20 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ngoài những câu hỏi bạn đã chuẩn bị, đừng ngần ngại hỏi những câu hỏi khác trong cuộc hẹn tái khám", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 208 | Chunk 21 | Tiền sản giật sau sinh =====
MERGE (s:Disease {name:"Tiền sản giật", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bác sĩ có thể hỏi bạn một số câu hỏi, ví dụ như: gần đây bạn có bất kỳ triệu chứng bất thường nào không, chẳng hạn như mờ mắt hoặc đau đầu? lần đầu tiên bạn nhận thấy các dấu hiệu hoặc triệu chứng của mình là khi nào? bạn có thường bị cao huyết áp không? bạn có từng bị tiền sản giật hoặc tiền sản giật sau sinh với lần mang thai nào trước đó không? bạn có bị biến chứng nào khác trong lần mang thai trước không? bạn có bất kỳ tình trạng sức khỏe nào khác không? bạn có tiền sử đau đầu hoặc đau nửa đầu không?", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 210 | Chunk 1 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (p1:Population {name:"60% phụ nữ bị mất ngủ vào khoảng từ tuần thứ 32 của thai kỳ và 8 tuần sau khi sinh", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (det1:Detail {name:"thời gian ngủ trung bình của họ là 7 giờ 16 phút vào tuần thai thứ 32", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"6 giờ 31 phút sau sinh 8 tuần", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"6 giờ 52 phút sau sinh 2 năm", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"thay đổi trong chu kì giấc ngủ trong và sau khi mang thai không phải là hiếm", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (a1:Advice {name:"việc biết nguyên nhân gây ra những thay đổi đó và cách giải quyết các vấn đề về giấc ngủ nhanh chóng để ngăn chúng trở thành bệnh mãn tính là một điều quan trọng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 210 | Chunk 2 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"mất ngủ sau sinh là gì? mất ngủ sau sinh xảy ra khi bạn rất muốn ngủ nhưng không thể ngủ mặc dù em bé đang ngủ ngon", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"các bà mẹ bị tình trạng này thường than phiền rằng họ cảm thấy bồn chồn và khó chịu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"họ có xu hướng thức để kiểm tra con và sợ đứa bé khóc", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"họ ngủ không sâu giấc và dễ bị đánh thức bởi những tiếng động nhỏ nhất", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

// ===== Article 210 | Chunk 3 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"việc mất ngủ sau sinh khá phổ biến", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu việc mất ngủ sau sinh kéo dài, bạn nên tham khảo ý kiến của các bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"việc theo dõi và điều trị các vấn đề về giấc ngủ càng sớm càng tốt, giúp giảm nguy cơ phát triển các biến chứng nặng hơn", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"trầm cảm", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (comp2:Complication {name:"tăng huyết áp", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp2)
MERGE (comp2)-[:CONTEXT]->(tk)

// ===== Article 210 | Chunk 4 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"biến động nội tiết tố sau sinh", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nồng độ estrogen thấp", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"đổ mồ hôi vào ban đêm", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"rối loạn tâm trạng sau sinh", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"lo lắng", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

MERGE (c6:Cause {name:"trầm cảm sau sinh", layer:"Cause"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c6)

MERGE (c7:Cause {name:"stress sau chấn thương", layer:"Cause"})
MERGE (c7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c7)

MERGE (c8:Cause {name:"rối loạn ám ảnh cưỡng chế", layer:"Cause"})
MERGE (c8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c8)

MERGE (c9:Cause {name:"cho trẻ ăn", layer:"Cause"})
MERGE (c9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c9)

MERGE (det1:Detail {name:"rối loạn giấc ngủ xảy ra khá phổ biến và ít nhất trong vài tuần đầu sau sinh", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"bạn cần nhiều thời gian để ngủ lại sau khi phải thức dậy cho bé ăn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"tùy thuộc vào nguyên nhân, chứng mất ngủ sau sinh có thể kéo dài vài tháng", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 210 | Chunk 5 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"tâm trạng bồn chồn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"cực kỳ khó chịu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"buồn bã", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (sym4:Symptom {name:"lo lắng tột độ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym4)
MERGE (sym4)-[:CONTEXT]->(tk)

MERGE (ad1:Advice {name:"nếu bạn gặp bất kỳ một trong số các triệu chứng này, gặp bác sĩ của bạn ngay lập tức", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(ad1)
MERGE (ad1)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"mất ngủ sau sinh có thể là một vấn đề nhỏ với một số người, nhưng đối với những người khác, nó có thể là một vấn đề về sức khỏe nghiêm trọng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 210 | Chunk 6 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"ngủ khi con của bạn ngủ: hãy thử nghỉ ngơi bất cứ khi nào khi con bạn ngủ thay vì làm việc nhà trong thời gian này", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đi ngủ sớm: đi ngủ càng sớm càng tốt. nếu bạn không thể ngủ, hãy thử các cách thư giãn như tắm nước nóng, đọc sách hoặc uống trà thảo dược giúp làm dịu tâm trí bạn và giúp đi ngủ ngon hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"chia sẻ công việc: nhờ chồng giúp bạn thay tã và mặc quần áo cho bé vào buổi sáng. nếu trẻ đang bú bình, chồng của bạn cũng có thể giúp nuôi bé khi mà bạn đang bận rộn với những công việc khác", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"hiểu thói quen ngủ của bé: ban đầu, em bé thức dậy nhiều lần vào ban đêm. nhưng khi chúng lớn lên, chúng ngủ lâu hơn trong đêm. việc nắm chu kỳ giấc ngủ của bé để bạn lên kế hoạch trong ngày có thể giúp bạn ngủ ngon hơn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"giải tỏa căng thẳng: căng thẳng không những khiến bạn mệt mỏi mà còn khó đi vào giấc ngủ. cố gắng đừng lo lắng hay căng thẳng về mọi thứ. bạn cũng có thể thử các phương pháp làm giảm căng thẳng như thiền, đi bộ hoặc nghe các bài hát êm dịu", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"theo dõi lượng caffeine uống vào: thói quen dùng một tách café vào buổi sáng là lý do khiến bạn khó ngủ. nếu bạn không thể ngưng hoàn toàn việc sử dụng caffeine, hãy cố gắng giới hạn bản thân chỉ uống một tách cà phê mỗi ngày và uống trước buổi trưa", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"tắt các thiết bị điện tử một giờ trước khi đi ngủ: máy tính, điện thoại di động và tv kích thích hoạt động của não và làm rối loạn giấc ngủ của bạn. ánh sáng phát ra từ các thiết bị này làm giảm nồng độ melatonin – chất điều hòa chất lượng ngủ của bạn", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"tập thở sâu và thư giãn cơ bắp: các bài tập thở nhịp nhàng đơn giản có thể khiến bạn dễ đi vào giấc ngủ và giúp bạn thư giãn. các bài tập thư giãn cơ bắp cũng giúp bạn bình tĩnh và giúp bạn dễ ngủ", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"nếu những phương pháp đơn giản này không có tác dụng, bạn có thể thử dùng thảo dược", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

// ===== Article 210 | Chunk 7 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"một số thảo dược đã được chứng minh có thể ngăn ngừa trầm cảm và giúp bạn ngủ lâu hơn. Nhưng bạn cần phải có sự cho phép của bác sĩ trước khi sử dụng.", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"trà hoa cúc: Một nghiên cứu trên những phụ nữ sau sinh cho thấy uống trà hoa cúc trong hai tuần giúp cải thiện chất lượng giấc ngủ và giảm nhẹ các triệu chứng trầm cảm. Nhưng tác dụng của loại trà này không kéo dài hơn bốn tuần. Vì vậy, đây chỉ có thể là một biện pháp điều trị ngắn hạn.", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"trà hoa oải hương: Hương thơm của hoa oải hương kích thích người mẹ sinh ra cảm giác tích cực đối với em bé. Trong một nghiên cứu, phụ nữ sau sinh được hướng dẫn uống một tách trà hoa oải hương để thưởng thức hương thơm của nó hàng ngày trong hai tuần. Những bà mẹ này đã hình thành một sự gắn kết mạnh mẽ hơn với em bé của họ và cũng có ít dấu hiệu trầm cảm, mệt mỏi hơn. Cũng như với hoa cúc, tác dụng tích cực của hoa oải hương chỉ giới hạn trong bốn tuần.", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"bấm huyệt: Trong một nghiên cứu, phụ nữ sau sinh được điều trị bấm huyệt ở điểm trung tâm của lỗ tai ngoài gọi là điểm áp lực Shen Men (điểm trên tai, ở đỉnh của hố tam giác) 4 lần/ngày trong 14 ngày. Kết quả cho thấy biện pháp này giúp cải thiện chất lượng giấc ngủ.", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

MERGE (t5:Treatment {name:"massage lưng: Trong một nghiên cứu của Đài Loan, một nhóm phụ nữ sau sinh thực hiện liệu pháp massage lưng 20 phút vào buổi tối trong 5 ngày liên tiếp, kết quả là chất lượng giấc ngủ của họ được cải thiện.", layer:"Treatment"})
MERGE (t5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t5)

MERGE (t6:Treatment {name:"bổ sung khoáng chất: Ma-giê và sắt đóng vai trò nổi bật trong việc ngăn ngừa rối loạn thần kinh. Chúng giúp cải thiện chất lượng giấc ngủ và ngăn ngừa trầm cảm.", layer:"Treatment"})
MERGE (t6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t6)

MERGE (t7:Treatment {name:"thuốc an thần: Một vài loại thuốc thường được kê toa và không gây nghiện như Nytol, Sominex hoặc Simply Sleep giúp bạn vượt qua chứng mất ngủ sau sinh. Tuy nhiên, thành phần chính trong các loại thuốc này là diphenhydramine, có thể làm một số bà mẹ cho con bú bị khô sữa.", layer:"Treatment"})
MERGE (t7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t7)

MERGE (t8:Treatment {name:"liệu pháp nhận thức hành vi: Một nghiên cứu cho thấy liệu pháp nhận thức hành vi có thể giúp phụ nữ bị mất ngủ và trầm cảm sau sinh cải thiện thói quen và hành vi ngủ. Tâm trạng và chất lượng giấc ngủ của họ được cải thiện.", layer:"Treatment"})
MERGE (t8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t8)

// ===== Article 210 | Chunk 8 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bà mẹ có thể nghe nhạc thư giãn có sóng Delta kích thích giấc ngủ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"hỗn hợp tinh dầu có hoa oải hương, chanh,… có thể giúp đi vào giấc ngủ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"những loại dầu này thường được để ở chân giường trước khi đi ngủ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

// ===== Article 210 | Chunk 9 | Mất ngủ sau sinh =====
MERGE (s:Topic {name:"Mất ngủ sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"giấc ngủ và trầm cảm có liên quan với nhau mặc dù không chắc chắn liệu trầm cảm gây ra chứng mất ngủ hay ngược lại", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"mất ngủ là biểu hiện phổ biến ở những người bị trầm cảm", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"không thể ngủ ngay cả khi con đang ngủ hoặc cảm thấy mệt mỏi mọi lúc", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu bạn gặp những điều trên thường xuyên, hãy tham khảo ý kiến bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trầm cảm sau sinh thường xảy ra trong vòng 4 tuần sau khi sinh và có thể lên đến 30 tuần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"25-50% trường hợp phụ nữ lần đầu có con, trầm cảm có thể kéo dài hơn 7 tháng", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"thiếu ngủ và mất ngủ không giống nhau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (c1:Cause {name:"thiếu ngủ là việc không thể ngủ được do một nguyên nhân bên ngoài như em bé hay thú cưng, thời gian làm việc dài và không gian xung quanh ồn ào", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c1)
MERGE (c1)-[:CONTEXT]->(tk)

MERGE (c2:Cause {name:"mất ngủ là việc không thể ngủ ngay cả khi có môi trường lý tưởng để ngủ", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c2)
MERGE (c2)-[:CONTEXT]->(tk)

MERGE (c3:Cause {name:"điều này có thể là do sức khỏe thể chất hoặc tinh thần kém, hiệu suất công việc kém hoặc do lo lắng", layer:"Cause"})
MERGE (s)-[:HAS_CAUSE]->(c3)
MERGE (c3)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"tự chăm sóc bản thân là việc rất quan trọng khi bạn trở thành một người mẹ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"nếu bạn đang bị mất ngủ sau khi sinh con, hãy tìm kiếm sự giúp đỡ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"bạn có thể nói chuyện với các bà mẹ mới sinh khác thông qua các diễn đàn và tìm cách để xử lý vấn đề này", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

MERGE (a5:Advice {name:"nếu các phương pháp được thảo luận ở trên không hiệu quả, hãy tham khảo ý kiến bác sĩ ngay lập tức", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a5)
MERGE (a5)-[:CONTEXT]->(tk)

MERGE (a6:Advice {name:"đừng để việc mất ngủ sau sinh ảnh hưởng đến việc bạn là một phụ nữ, một người mẹ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a6)
MERGE (a6)-[:CONTEXT]->(tk)



// ===== Article 212 | Chunk 1 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đứng thẳng và di chuyển trong khi sinh có thể giúp giảm đau và giúp em bé di chuyển xuống thấp trong đường âm đạo (ống sinh)", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 212 | Chunk 2 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bạn nên di chuyển để tự cảm nhận và cố gắng tìm tư thế tốt nhất giảm đau cho bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bạn có thể đi bộ, lắc lư, xoay hông, nhảy hoặc ngồi xổm", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 213 | Chunk 1 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"xoa bóp có thể giúp giảm đau", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 213 | Chunk 2 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"xoa bóp vùng hông lưng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (a2:Advice {name:"xoa bóp vai", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (a3:Advice {name:"xoa bóp tay", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 214 | Chunk 1 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"rebozo là dạng “đồ” có thể dùng trong suốt thai kỳ và khi sinh để thư giãn và giàm đau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 214 | Chunk 2 | Tự chăm sóc để giảm đau trong chuyển dạ =====
MERGE (s:Topic {name:"Tự chăm sóc để giảm đau trong chuyển dạ", layer:"Topic"})
MERGE (tk:Topic {name:"Chuyển dạ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"những người giúp đỡ có thể xoa bóp thông qua việc quấn vải xung quanh bà mẹ và tạo ra các chuyển động nhịp nhàng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (a2:Advice {name:"những người giúp đỡ có thể xoa bóp thông qua việc tạo ra các chuyển động thư giãn từ từ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 215 | Chunk 1 | Các dấu hiệu của chuyển dạ =====
MERGE (s:Topic {name:"Chuyển dạ", layer:"Topic"})


MERGE (det1:Detail {name:"cơn co tử cung đều đặn trong 2 giờ qua luôn luôn là dấu hiệu chuyển dạ có tiến triển", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)


// ===== Article 215 | Chunk 2 | Các dấu hiệu của chuyển dạ =====
MERGE (s:Topic {name:"Chuyển dạ", layer:"Topic"})


MERGE (s1:Symptom {name:"vỡ ối cả trước khi có cơn co tử cung", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)


MERGE (s2:Symptom {name:"vỡ ối trong khi có cơn co tử cung", layer:"Symptom"})

MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (det1:Detail {name:"các cơn co tử cung luôn luôn tăng dần", layer:"Detail"})

MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 215 | Chunk 3 | Các dấu hiệu của chuyển dạ =====
MERGE (s:Topic {name:"Chuyển dạ", layer:"Topic"})


MERGE (s1:Symptom {name:"các cơn co tử cung tạo áp lực (cảm giác nặng trì) vùng tầng sinh môn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)


// ===== Article 216 | Chunk 1 | Chảy máu âm đạo sau sinh =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"sau khi sinh thường hoặc sinh mổ, bạn sẽ bị chảy máu và xuất tiết âm đạo. điều này được gọi là chảy máu từ tử cung sau sinh. đó là cách mà cơ thể bạn loại bỏ sạch máu và những mô thừa trong tử cung – đã từng giúp em bé phát triển.", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 216 | Chunk 2 | Chảy máu âm đạo sau sinh =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chảy máu nhiều nhất trong vài ngày đầu sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu chảy máu nhiều vẫn tiếp tục sau đó, có thể bạn cần phải liên hệ với bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 216 | Chunk 3 | Chảy máu âm đạo sau sinh =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"máu từ âm đạo sẽ có màu đỏ tươi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"bạn có thể thấy một số cục máu đông trong vài ngày đầu sau khi sinh", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"số lượng máu cục thường không vượt quá 1/4 lượng máu chảy ra", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (advice1:Advice {name:"bạn phải mặc tã thấm máu, nhưng sau đó bạn sẽ có thể sử dụng một miếng băng vệ sinh thông thường", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice1)
MERGE (advice1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"bạn có thể bị chảy máu nhiều hơn một chút khi bạn đưa em bé về nhà", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (advice2:Advice {name:"điều này có thể là do bạn di chuyển nhiều. nếu điều này xảy ra, hãy thử dừng chân và nghỉ ngơi một chút", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(advice2)
MERGE (advice2)-[:CONTEXT]->(tk)

// ===== Article 216 | Chunk 4 | Chảy máu âm đạo sau sinh =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cũng là điều bình thường nếu đôi khi bạn cảm thấy có một dòng máu chảy ra khi bạn đứng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"điều này là do cấu tạo của âm đạo của bạn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"máu được giữ trong một cấu trúc giống như một chiếc cốc trong khi bạn đang ngồi hoặc nằm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"khi bạn đứng dậy, máu sẽ chảy ra ngoài theo trọng lực", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

// ===== Article 216 | Chunk 5 | Chảy máu âm đạo sau sinh =====
MERGE (s:Topic {name:"Chảy máu âm đạo", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"sau khoảng 10 ngày, bạn sẽ thấy ít máu hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (sym1:Symptom {name:"chảy máu nhẹ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"chấm máu nhỏ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trong tối đa 6 tuần sau khi sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"bạn chỉ có thể sử dụng băng vệ sinh trong thời gian này", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"băng vệ sinh dạng ống có thể dẫn đến nhiễm trùng", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)



// ===== Article 219 | Chunk 1 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục hàng ngày có thể giúp hồi phục sự dẻo dai của cơ bắp và tăng sức đề kháng của cơ thể bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục có thể làm cho bạn giảm mệt mỏi vì nó làm tăng mức năng lượng của bạn và nâng cao cảm giác khỏe mạnh của cơ thể bạn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 219 | Chunk 2 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trong thời gian mang thai, các cơ ở phần bụng của bạn bị kéo căng ra. phải mất thời gian để trương lực cơ vùng này trở về trạng thái dẻo dai khỏe khoắn.", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (app1:Application {name:"tập thể dục giúp làm các cơ bắp săn chắc.", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

// ===== Article 219 | Chunk 3 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"kiểm tra với bác sĩ của bạn trước khi bắt đầu một chương trình tập thể dục", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bạn nên bắt đầu tập thể dục khi bạn cảm thấy bạn có thể thực hiện được việc tập thể dục và duy trì nó", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"thực hiện theo các hướng dẫn tương tự như bạn đã làm khi bạn có thai", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu bạn sinh mổ, cuộc sanh của bạn khó khăn, hoặc có biến chứng, bạn có thể mất một ít thời gian nữa để cảm thấy sẵn sàng để bắt đầu tập thể dục", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 219 | Chunk 4 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn không tập thể dục trong thai kỳ, nên bắt đầu với các bài tập dễ dàng và từ từ đến các bài khó hơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bạn tập thể dục thường xuyên trong suốt thai kỳ, bạn có thể có nền tảng để bắt đầu tập thể dục sau sanh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tuy nhiên, bạn không nên cố gắng để tiếp tục nhịp độ cũ của bạn ngay lập tức", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 219 | Chunk 5 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ là một cách tốt để có lại vóc dáng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đi dạo sẽ chuẩn bị cho bạn những bài tập mạnh hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"đi bộ là một lựa chọn tốt cho tập thể dục vì điều duy nhất bạn cần là một đôi giày thoải mái", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nếu như bạn đã có giày đi bộ rồi, bạn có thể đi bộ bằng đôi giày của bạn hầu như bất cứ thời gian nào hoặc bất cứ nơi nào", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 219 | Chunk 6 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"đi bộ cũng tốt vì bé có thể đi cùng bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hai mẹ con bạn có thể ra khỏi nhà để tập thể dục và hít không khí mà không cần phải tìm nơi giữ trẻ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nhìn thấy người khác hoặc ở bên ngoài có thể giúp giảm bớt căng thẳng", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 219 | Chunk 7 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"khi bạn cảm thấy khỏe hơn, hãy cố gắng tập nhiều động tác thể dục mạnh mẽ hơn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bạn sẽ chọn các bài tập mà đáp ứng nhu cầu của bạn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (app1:Application {name:"một chương trình tập thể dục tốt sẽ làm cho tim và phổi của bạn khỏe hơn", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (app2:Application {name:"một chương trình tập thể dục tốt sẽ làm cho cơ bắp của bạn dẻo dai hơn", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

// ===== Article 219 | Chunk 8 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"có lớp tập thể dục đặc biệt sau sinh mà bạn có thể tham gia", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nhà cung cấp dịch vụ chăm sóc sức khỏe của bạn có thể giúp bạn tìm thấy một số lớp học tốt", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 219 | Chunk 9 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"các trung tâm thể dục mà bạn có thể tập thể dục như câu lạc bộ thể dục địa phương, trung tâm cộng đồng, các trường cao đẳng địa phương, bệnh viện, và câu lạc bộ người cao tuổi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"với bất kỳ chương trình bạn tham gia vào, nên đảm bảo rằng bạn sẽ tiếp tục theo tập thể dục thường xuyên", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tập thể dục một cách đều đặn thì quan trọng hơn là bắt đầu ngay sau khi sinh", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 219 | Chunk 10 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"mặc quần áo thoải mái sẽ giúp giữ cho bạn mát mẻ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 219 | Chunk 11 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"mặc một chiếc áo ngực đúng kích cỡ và có độ co giãn phù hợp để giúp bảo vệ ngực của bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 219 | Chunk 12 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 219 | Chunk 13 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trước khi bạn bắt đầu mỗi buổi tập, luôn luôn hâm nóng cơ thể trong vòng 5 - 10 phút", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"vận động nhẹ chẳng hạn như đi bộ chậm, sẽ giúp cơ bắp của bạn sẵn sàng để tập thể dục", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"khi bạn khởi động, tránh bị thương khi căng cơ bắp của bạn", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"mỗi lần căng cơ nên giữ khoảng 10 - 20 giây không được bật lại", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 219 | Chunk 14 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"bạn nên tập thể dục để tim bạn đập ở mức độ cung cấp máu cho bạn tập luyện tốt nhất", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (det1:Detail {name:"điều này được gọi là nhịp tim mục tiêu của bạn", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 219 | Chunk 15 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nhịp tim mục tiêu của bạn là 50 - 85% của nhịp tim tối đa trung bình so với tuổi của bạn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 219 | Chunk 16 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"để kiểm tra nhịp tim, đếm các nhịp đập của cảm giác mạch đập ở vùng cổ tay. đếm trong 10 giây. nhân số này với 6 để có được số nhịp đập mỗi phút", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 219 | Chunk 17 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"khi bạn mới bắt đầu chương trình tập luyện của bạn, nhằm mục đích hạ nhịp tim mục tiêu của bạn (50% của nhịp đập tối đa trung bình).", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"đến khi bạn có được hình dáng tốt hơn, từ từ tăng nhịp tim mục tiêu của bạn.", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"sau 6 tháng tập luyện, bạn sẽ có thể đạt đến 85% nhịp tim tối đa của bạn.", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"nhưng bạn không cần phải thực hiện ở 85% nhịp tim tối đa của bạn để giữ cân đối cơ thể.", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"bạn nên cố gắng tập thể dục khoảng 20 - 30 phút trong nhịp tim mục tiêu của bạn.", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 219 | Chunk 18 | Tập thể dục giữ vóc dáng sau sinh =====
MERGE (s:Topic {name:"Tập thể dục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sau khi tập thể dục, làm mát cơ thể xuống bằng cách làm chậm các bài tập thể dục của bạn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"hạ nhiệt cho phép nhịp tim của bạn trở lại mức bình thường", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"hạ nhiệt xuống trong vòng 5 - 10 phút", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"sau đó kéo giãn cơ, cũng giúp ngăn ngừa đau nhức cơ bắp", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 223 | Chunk 1 | Căng thẳng sau sinh =====
MERGE (s:Topic {name:"Căng thẳng sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khoảng 2-3 ngày sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"vài phụ nữ", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

MERGE (s1:Symptom {name:"lo âu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"buồn bã", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"dễ dàng nổi giận với đứa con mới sinh", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"dễ dàng nổi giận với chồng", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"dễ dàng nổi giận với những đứa con khác", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"khóc dù không có lý do", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s6)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"khó ngủ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s7)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"rối loạn ăn uống", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s8)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (s9:Symptom {name:"khó đưa ra lựa chọn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s9)
MERGE (s9)-[:CONTEXT]->(tk)

MERGE (s10:Symptom {name:"phân vân liệu họ có khả năng chăm sóc con hay không", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s10)
MERGE (s10)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"những cảm xúc này, thường gọi là căng thẳng thoáng qua sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"có thể xuất hiện rồi hết trong vài ngày đầu sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 2 | Căng thẳng sau sinh =====
MERGE (s:Topic {name:"Căng thẳng sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"căng thẳng sau sinh thường giảm dần trong vài ngày hoặc 1-2 tuần mà không cần điều trị", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 3 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"cảm giác buồn bã", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (sym2:Symptom {name:"lo âu", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym2)
MERGE (sym2)-[:CONTEXT]->(tk)

MERGE (sym3:Symptom {name:"đau khổ nặng nề hơn", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym3)
MERGE (sym3)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"không có khả năng thực hiện những công việc hằng ngày", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 4 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"trầm cảm sau sinh có thể xảy ra 1 năm sau khi sinh, nhưng đa phần thường xảy ra 1-3 tuần sau sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 5 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thay đổi nồng độ nội tiết tố - nồng độ estrogen và progesterone giảm mạnh trong vài giờ sau sinh", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"tiền sử trầm cảm - phụ nữ bị trầm cảm, trước, trong, hoặc sau sinh. hoặc những người đang được điều trị trầm cảm có nguy cơ cao bị trầm cảm sau sinh", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"cảm xúc - cảm giác nghi ngờ thường xuất hiện ở phụ nữ có thai. nếu mang thai ngoài ý muốn, cảm giác này có thể ảnh hưởng đến cách suy nghĩ của người phụ nữ về thai kỳ cũng như đứa trẻ trong bụng. ngay cả khi mang thai nằm trong kế hoạch, vẫn cần một khoảng thời gian để người phụ nữ quen với việc có con", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"mệt mỏi - nhiều phụ nữ cảm thấy mệt mỏi sau khi sinh. có thể cần vài tuần để một phụ nữ lấy lại sức khỏe và năng lượng. với những phụ nữ sinh mổ, thời gian này có thể lâu hơn", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"yếu tố đời sống - thiếu sự ủng hộ từ những người xung quanh và những sự kiện gây chấn động, như người thân vừa mất, gia đình bị đau ốm, hoặc chuyển đến sống ở thành phố mới", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

// ===== Article 223 | Chunk 6 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn nghĩ bạn bị trầm cảm sau sinh, hoặc chồng bạn hoặc người thân trong gia đình cho rằng bạn bị trầm cảm sau sinh, bạn cần đến khám bác sĩ càng sớm càng tốt. đừng đợi cho đến lần hẹn tái khám định kì sau sinh", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 7 | Trầm cảm sau sinhh =====
MERGE (s:Disease {name:"Trầm cảm", layer:"Disease"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"điều trị bằng thuốc chống trầm cảm", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"liệu pháp tâm lý", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"thường được kết hợp với dùng thuốc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 8 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"thuốc chống trầm cảm giúp cân bằng những chất điều hòa cảm xúc do não tiết ra", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"có nhiều loại thuốc chống trầm cảm", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"đôi khi phải phối hợp nhiều thuốc để đạt kết quả tốt nhất", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

MERGE (t4:Treatment {name:"có thể mất 3-4 tuần sau khi dùng thuốc bạn mới thấy thuyên giảm", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t4)
MERGE (t4)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 9 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thuốc chống trầm cảm có thể gây nên tác dụng không mong muốn. nhưng thường chúng chỉ là tạm thời và có thể biến mất trong một thời gian ngắn.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu bạn gặp phải những tác dụng không mong muốn nặng nề và gây cản trở công việc hằng ngày của bạn, hãy báo với bác sĩ. bạn có thể cần thử một loại thuốc chống trầm cảm khác.", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"nếu bệnh trầm cảm trở nặng ngay sau khi bắt đầu sử dụng thuốc hoặc nếu bạn có ý nghĩ về làm hại đến cơ thể mình hoặc người khác, hãy gặp bác sĩ hoặc đến phòng cấp cứu ngay lập tức.", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 10 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu một phụ nữ dùng thuốc chống trầm cảm, họ có thể truyền tác dụng của thuốc qua sữa đến đứa trẻ. nồng độ thuốc trong sữa thường rất thấp. nuôi con bằng sữa mẹ mang lại nhiều lợi ích cho bạn và con bạn. trước khi quyết định liệu có nên dùng thuốc chống trầm cảm khi cho con bú hay không, cần cân nhắc đến những tai biến đối với con bạn khi tiếp xúc với thuốc qua sữa. bạn nên gặp bác sĩ để được tư vấn một cách tốt nhất về vấn đề này", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 223 | Chunk 11 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"khi sử dụng liệu pháp tâm lý, bác sĩ tâm lý và bạn sẽ tâm sự về những cảm xúc của bạn và cùng tìm cách giải tỏa chúng", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"đôi lúc, bạn chỉ cần điều trị tâm lý vài tuần, nhưng đôi khi cũng cần mất nhiều tháng hoặc lâu hơn", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

// ===== Article 223 | Chunk 12 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"bạn có thể trị liệu tâm lý một mình với bạn và bác sĩ tâm lý của bạn", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"trị liệu tâm lý theo nhóm, bạn gặp bác sĩ tâm lý cùng những bệnh nhân đang mắc phải tình trạng bệnh tương tự", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"trị liệu theo gia đình hay theo cặp, bạn và gia đình hoặc chồng bạn cùng gặp bác sĩ trị liệu", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

// ===== Article 223 | Chunk 13 | Trầm cảm sau sinh =====
MERGE (s:Topic {name:"Trầm cảm sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bạn có tiền sử trầm cảm bất kì lúc nào trong đời hoặc nếu bạn đang dùng thuốc chống trầm cảm, hãy nói với bác sĩ bạn trong giai đoạn sớm của chương trình chăm sóc trước sinh", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nói với bác sĩ bạn trước khi bạn có thai là lý tưởng nhất", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (t1:Treatment {name:"bác sĩ của bạn có thể gợi ý việc bắt đầu điều trị ngay sau khi sinh xong để dự phòng trầm cảm sau sinh", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (rf1:RiskFactor {name:"nếu bạn đang dùng thuốc chống trầm cảm trước khi mang thai, bác sĩ của bạn có thể xem xét và giúp bạn quyết định liệu có nên dùng thuốc khi đang mang thai hay không", layer:"RiskFactor"})
MERGE (rf1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_RISK_FACTOR]->(rf1)

// ===== Article 225 | Chunk 1 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (def1:Definition {name:"cắt bao quy đầu là phẫu thuật cắt bỏ lớp da, được gọi là bao quy đầu, phần che đậy quy đầu (đầu) của dương vật", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)

// ===== Article 225 | Chunk 2 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"việc cắt bao quy đầu cho trẻ sơ sinh có thể được thực hiện trước hoặc sau khi người mẹ và em bé rời bệnh viện", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (c1:Cause {name:"việc cắt bao quy đầu chỉ được thực hiện nếu em bé khỏe mạnh", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"nếu đứa trẻ có một tình trạng sức khỏe không tốt, việc cắt bao quy đầu có thể được hoãn lại", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (p1:Population {name:"việc cắt bao quy đầu cũng có thể được thực hiện trên những trẻ em nhiều tuổi hơn hoặc người lớn", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_POPULATION]->(p1)

MERGE (det1:Detail {name:"tuy nhiên, ở trẻ em lớn và người lớn trưởng thành, sự phục hồi có thể mất nhiều thời gian hơn và các nguy cơ làm xuất hiện biến chứng cũng tăng lên", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 225 | Chunk 3 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"việc cắt bao quy đầu là một thủ tục tự chọn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"cha mẹ có thể lựa chọn để bé trai sơ sinh của họ được cắt bao quy đầu hay không", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nó không được yêu cầu bởi pháp luật hoặc chính sách của bệnh viện", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"việc cắt bao quy đầu có thể không được hợp đồng bảo hiểm của bạn chi trả", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"để tìm hiểu thêm, gọi nhà cung cấp bảo hiểm của bạn hoặc kiểm tra hợp đồng của bạn", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 225 | Chunk 4 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"việc cắt bao quy đầu có phải là một tập tục phổ biến hay không", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (p1:Population {name:"nhiều bé trai sơ sinh ở Mỹ được cắt bao quy đầu", layer:"Population"})
MERGE (s)-[:AFFECTS]->(p1)
MERGE (p1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"nhưng số lượng giảm dần trong những năm gần đây", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"nó ít phổ biến hơn ở những vùng khác trên thế giới", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 225 | Chunk 5 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"một số cha mẹ lựa chọn để con trai của họ được cắt bao quy đầu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"việc cắt bao quy đầu là một phần của những thực hành tôn giáo nhất định nào đó", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"những người khác có thể chọn việc cắt bao quy đầu để đứa trẻ không khác với cha của họ và những bé trai khác", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (det1:Detail {name:"bựa sinh dục là chất dịch tiết màu trắng sền sệt có chứa những tế bào chết", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"nó có thể tích tụ bên dưới da quy đầu của nam giới không cắt da quy đầu", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (comp1:Complication {name:"điều này có thể gây ra mùi hoặc nhiễm trùng", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (a4:Advice {name:"một cậu bé chưa được cắt bao quy đầu có thể được dạy cách rửa dương vật để loại bỏ bựa sinh dục như là một phần của thói quen tắm rửa hằng ngày của mình", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

// ===== Article 225 | Chunk 6 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"một số cha mẹ lựa chọn không để con trai của họ được cắt bao quy đầu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (c1:Cause {name:"lo lắng về việc nỗi đau mà em bé có thể cảm nhận được", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"những rủi ro liên quan đến cuộc phẫu thuật", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (a2:Advice {name:"những người khác tin rằng đó là một quyết định mà một cậu bé sẽ chọn lựa nên làm khi cậu ấy lớn hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

// ===== Article 225 | Chunk 7 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"những đứa trẻ sơ sinh được cắt bao quy đầu xuất hiện có ít rủi ro về nhiễm trùng đường tiết niệu hơn là những trẻ không cắt bao quy đầu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"rủi ro về nhiễm trùng đường tiết niệu trong cả hai nhóm là thấp", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (pr1:Prevention {name:"nó có thể giúp ngăn ngừa ung thư dương vật, một tình trạng hiếm có", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr1)
MERGE (pr1)-[:CONTEXT]->(tk)

MERGE (pr2:Prevention {name:"một số nghiên cứu cho thấy việc cắt bao quy đầu có thể giảm nguy cơ của một người đàn ông mắc phải vi rút làm suy giảm miễn dịch của người (HIV) từ một bạn tình nữ bị nhiễm bệnh", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr2)
MERGE (pr2)-[:CONTEXT]->(tk)

MERGE (pr3:Prevention {name:"cũng có thể là việc cắt bao quy đầu làm giảm nguy cơ lây truyền HIV và các bệnh lây qua đường tình dục khác từ một người đàn ông bị nhiễm bệnh cho một bạn tình nữ", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr3)
MERGE (pr3)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"tại thời điểm hiện tại, vẫn chưa có đủ thông tin để khuyên bạn cắt bao quy đầu cho trẻ sơ sinh vì lý do sức khỏe", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 225 | Chunk 8 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (comp1:Complication {name:"chảy máu", layer:"Complication"})
MERGE (comp1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp1)

MERGE (comp2:Complication {name:"nhiễm trùng", layer:"Complication"})
MERGE (comp2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp2)

MERGE (comp3:Complication {name:"để lại sẹo", layer:"Complication"})
MERGE (comp3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp3)

MERGE (comp4:Complication {name:"cắt quá nhiều bao quy đầu", layer:"Complication"})
MERGE (comp4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp4)

MERGE (comp5:Complication {name:"cắt không đủ bao quy đầu", layer:"Complication"})
MERGE (comp5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp5)

MERGE (comp6:Complication {name:"cần nhiều phẫu thuật hơn để khắc phục những vấn đề này", layer:"Complication"})
MERGE (comp6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_COMPLICATION]->(comp6)

// ===== Article 225 | Chunk 9 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"việc cắt bao quy đầu chỉ mất vài phút", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"em bé được đặt trên một cái bàn đặc biệt", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"một thuốc gây tê được sử dụng để giảm đau", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"dương vật và bao quy đầu được làm sạch", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

MERGE (t5:Treatment {name:"một cái kẹp đặc biệt được gắn vào dương vật và bao quy đầu được cắt bỏ", layer:"Treatment"})
MERGE (t5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t5)

MERGE (t6:Treatment {name:"sau phẫu thuật, băng vết thương và bôi sáp mỡ để tránh dương vật khỏi cọ xát với tả", layer:"Treatment"})
MERGE (t6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t6)

// ===== Article 225 | Chunk 10 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu bé trai của bạn đã được cắt bao quy đầu, một miếng băng có sáp mỡ có thể được đặt trên đầu của dương vật sau khi phẫu thuật", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"miếng băng này thường rơi ra khi em bé đi tiểu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"một số bác sĩ khuyên bạn nên giữ một miếng băng sạch cho đến khi dương vật được lành, trong khi những bác sĩ khác khuyên nên bỏ nó ra", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (det1:Detail {name:"trong hầu hết các trường hợp, da sẽ lành sau 7 - 10 ngày", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"bạn có thể nhận thấy rằng đầu dương vật có màu đỏ và có thể có một lượng nhỏ chất lỏng màu vàng", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 225 | Chunk 11 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sử dụng xà phòng nhẹ và nước để làm sạch phân dính trên dương vật", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"thay tã thường xuyên để nước tiểu và phân không gây nhiễm trùng", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (sym1:Symptom {name:"vùng đỏ tồn tại kéo dài", layer:"Symptom"})
MERGE (sym1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym1)

MERGE (sym2:Symptom {name:"sưng", layer:"Symptom"})
MERGE (sym2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym2)

MERGE (sym3:Symptom {name:"chất lỏng đục và tạo thành một lớp vảy cứng", layer:"Symptom"})
MERGE (sym3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(sym3)

// ===== Article 225 | Chunk 12 | Cắt bao quy đầu ở trẻ sơ sinh =====
MERGE (s:Topic {name:"Cắt bao quy đầu", layer:"Topic"})
MERGE (tk:Topic {name:"Trẻ sơ sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"nếu quyết định không cho con trai cắt bao quy đầu, rửa dương vật và bao quy đầu của em bé đúng cách rất quan trọng", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"phần bên ngoài của dương vật nên được rửa sạch bằng xà bông nhẹ và nước", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"không cố gắng kéo ngược bao quy đầu của trẻ sơ sinh", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (det1:Detail {name:"bao quy đầu có thể không thể kéo ngược lại hoàn toàn cho đến khi trẻ khoảng 3 – 5 tuổi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a4:Advice {name:"khi con trai bạn lớn lên, dạy cho con bạn làm thế nào để rửa dương vật của mình", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"con trai bạn nên kéo ngược bao quy đầu và làm sạch bằng xà phòng và nước", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"bao quy đầu sau đó nên được đẩy lại vào vị trí", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 226 | Chunk 1 | Cơn đau trong quá trình sinh nở =====
MERGE (s:Topic {name:"Cơn đau", layer:"Topic"})
MERGE (tk:Topic {name:"Quá trình sinh nở", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"nếu bạn cũng giống như hầu hết các phụ nữ khác, cơn đau trong lúc chuyển dạ và sinh nở sẽ là một trong những điều làm bạn lo lắng khi dự định có con", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"điều này cũng dễ hiểu, bởi vì hầu hết phụ nữ đều bị đau khi sinh", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"cũng có vài trường hợp chuyển dạ ít đau, nhưng tốt hơn hết là nên có sẵn kế hoạch để đối phó với cơn đau cho bản thân", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (a1:Advice {name:"chuẩn bị kế hoạch để giảm đau là một trong những cách tốt nhất để đảm bảo rằng bạn sẽ giữ bình tĩnh và có thể ứng phó với cơn đau khi thời điểm sinh nở đến", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 226 | Chunk 2 | Cơn đau trong quá trình sinh nở =====
MERGE (s:Topic {name:"Cơn đau", layer:"Topic"})
MERGE (tk:Topic {name:"Quá trình sinh nở", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"sự co thắt cơ tử cung", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"áp lực đè lên cổ tử cung", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (s1:Symptom {name:"cơn co thắt mạnh ở bụng, háng, và lưng", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"cảm giác đau nhức", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

MERGE (s3:Symptom {name:"đau ở hai bên hông hoặc đùi", layer:"Symptom"})
MERGE (s3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s3)

MERGE (c3:Cause {name:"áp lực lên bàng quang và vùng tầng sinh môn do đầu của thai nhi", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"đường sinh dục cũng như âm đạo bị kéo căng", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (det1:Detail {name:"đau trong quá trình chuyển dạ khác nhau ở mỗi phụ nữ", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"mặc dù chuyển dạ thường được coi là một trong những sự kiện gây đau nhất mà con người từng trải qua, cơn đau này rất khác nhau ở mỗi phụ nữ, thậm chí là ở mỗi lần sinh nở khác nhau", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"mỗi phụ nữ sẽ có những trải nghiệm khác nhau về cơn đau, với một số người, nó có thể giống như đau bụng trong chu kỳ kinh nguyệt, với một số khác, cơn đau có thể giống như khi chịu một áp lực nặng nề, hoặc những cơn co thắt rất mạnh như đau bụng khi bị tiêu chảy", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"không những chính các cơn co thắt làm cho sản phụ cảm thấy đau nhất, mà điều chính yếu là do những cơn co thắt này lặp đi lặp lại liên tục và càng lúc thời gian để thư giãn giữa các cơn co thắt càng trở nên ít hơn", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 226 | Chunk 3 | Cơn đau trong quá trình sinh nở =====
MERGE (s:Topic {name:"Cơn đau", layer:"Topic"})
MERGE (tk:Topic {name:"Quá trình sinh nở", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tập thể dục thường xuyên và hợp lý (với sự đồng ý của các bác sỹ) có thể giúp cơ bắp chắc khỏe hơn và chuẩn bị cho cơ thể sẵn sàng với những căng thẳng lúc chuyển dạ", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tập thể dục cũng có thể làm tăng sức chịu đựng của bạn, điều này sẽ rất có lợi nếu quá trình chuyển dạ của bạn kéo dài", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"không nên tập luyện quá sức, dù với hình thức tập luyện nào – và điều này đặc biệt đúng khi bạn đang mang thai", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"thảo luận với bác sỹ để có những bài tập an toàn", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tham dự các lớp tập huấn trước sinh, các bạn sẽ được học những kỹ thuật khác nhau để kiểm soát cơn đau", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"học những bài học trực quan đến các bài tập căng cơ giúp hỗ trợ các cơ nâng đỡ tử cung", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"áp dụng kỹ thuật Lamaze và phương pháp Bradley", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 243 | Chunk 1 | 3 tháng giữa thai kỳ =====
MERGE (s:Topic {name:"3 tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ba tháng giữa thai kỳ (quý hai của thai kỳ) là giai đoạn từ tuần thứ 13 cho đến tuần thứ 26 của thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"trong giai đoạn này, em bé sẽ lớn lên và thay đổi hàng ngày", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 243 | Chunk 2 | 3 tháng giữa thai kỳ =====
MERGE (s:Topic {name:"3 tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi bắt đầu quý hai thai kỳ, thai nhi dài khoảng 3 inches (7.62 cm)", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"bác sĩ sẽ nói cho bạn biết kích thước thai dựa vào “chiều dài đầu mông”", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"chiều dài này được đo từ đỉnh đầu cho đến tận cùng thân (không phải là từ đầu đến ngón chân) vì lúc này, chân của thai nhi chỉ mới nhú ra mà thôi", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (det4:Detail {name:"trong giai đoạn đầu của quý hai thai kỳ, đầu là phần lớn nhất của thai nhi", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

MERGE (det5:Detail {name:"trong một vài tuần sau đó, những phần còn lại của thai nhi sẽ phát triển dài ra cho đến khi cân xứng với đầu của nó", layer:"Detail"})
MERGE (det5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det5)

MERGE (det6:Detail {name:"đến hết quý hai, bé có thể dài 9 inch (22.86 cm) hoặc thậm chí là dài hơn", layer:"Detail"})
MERGE (det6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det6)

// ===== Article 243 | Chunk 5 | 3 tháng giữa thai kỳ =====
MERGE (s:Topic {name:"3 tháng giữa", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"đến 18 tuần thì thai nhi bắt đầu có thể nghe một số âm thanh như tiếng tim", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"sau 18 tuần, khả năng nghe của bé sẽ phát triển và bé có thể nghe được giọng nói của bạn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"mắt của bé có thể mở vào tuần thứ 20", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"trước đó, các mi mắt được đóng kín hoàn toàn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"tuy nhiên, bé sẽ không thể nhìn thấy gì cho đến quý thứ ba thai kỳ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

MERGE (det6:Detail {name:"các vân tay và chân được hình thành rõ ràng vào giữa quý hai", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det6)
MERGE (det6)-[:CONTEXT]->(tk)

MERGE (det7:Detail {name:"xuất hiện ở tay trước và sau đó là chân", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det7)
MERGE (det7)-[:CONTEXT]->(tk)

MERGE (det8:Detail {name:"điều này giúp phát triển khả năng nắm của thai nhi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det8)
MERGE (det8)-[:CONTEXT]->(tk)

MERGE (det9:Detail {name:"lông tơ và các chất sáp màu trắng (chất gây) bao bọc và bảo vệ da của bé", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det9)
MERGE (det9)-[:CONTEXT]->(tk)

MERGE (det10:Detail {name:"da của bé rất mỏng, lỏng lẻo và nhăn nheo", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det10)
MERGE (det10)-[:CONTEXT]->(tk)

MERGE (det11:Detail {name:"trong quý ba, các chất béo sẽ xuất hiện ở lớp dưới da của thai nhi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det11)
MERGE (det11)-[:CONTEXT]->(tk)

// ===== Article 244 | Chunk 7 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hệ thần kinh. đây là một trong những cơ quan đầu tiên được hình thành trong giai đoạn phôi. não, tủy sống và các dây thần kinh của bé sẽ hình thành trong giai đoạn này.", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 244 | Chunk 8 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"tim là một ống hình chữ s ở mặt trước của phôi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"ống này sẽ phát triển thành tim của bé", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"ban đầu tim sẽ không đập, nhưng rất sớm sau đó, nó sẽ đập và bơm những tế bào máu sớm nhất", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 244 | Chunk 9 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"mặt của bé sẽ hình thành hình dạng trong giai đoạn phôi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"mắt, tai sẽ hình thành ở phần đầu của phôi và kết nối với não bộ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"mắt sẽ di chuyển về phí mặt, và các mí mắt sẽ bảo vệ cho quá trình phát triển của mắt", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"các phần mô khác nhau sẽ phát triển và nối lại với nhau để tạo nên các phần khác nhau như trán, mũi, cằm, môi và xương hàm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"ống mũi, miệng, mầm răng và mầm lưỡi với mầm của các tế bào vị giác cũng hình thành", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

// ===== Article 244 | Chunk 10 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"ban đầu, tay và chân của bé chỉ là những mầm nhỏ mọc ra từ phần phôi", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"trong quá trình phát triển, tay của phôi giống như vây trước, còn chân trông giống như vây sau của con cá", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"ở mỗi chi sẽ có một mầm mà sau này sẽ phát triển thành các ngón", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 244 | Chunk 11 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cơ quan sinh sản. các tế bào mà sau này trở thành tinh trùng hoặc trứng được hình thành trong giai đoạn này", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"dương vật hoặc âm đạo của bé đã có thể nhìn thấy trong giai đoạn cuối của thời kì phôi, nhưng vẫn chưa thể xác định giới tính của bé bằng siêu âm trong giai đoạn này", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 244 | Chunk 12 | Sự phát triển của thai nhi =====
MERGE (s:Topic {name:"Sự phát triển của thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"hệ thống cơ và xương. các cơ bắt đầu phát triển và phôi thai cũng bắt đầu vận động. ban đầu chỉ là những vận động đơn giản như giật cơ hoặc vận động chỉ mang tính phản ứng. sau khi hệ thống cơ và thần kinh hoạt động kết hợp với nhau thì thai nhi đã có thể có những vận động có mục đích.", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"ở giai đoạn cuối của thời kì này (vào khoảng 10 tuần thai), phôi có kích thước khoảng 1 inch (2,54 cm).", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"vẫn còn quá nhỏ để bạn có thể cảm nhận được những vận động của bé. bạn có thể cảm nhận được những vận động này vào giữa quý thứ hai của thai kỳ.", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 245 | Chunk 2 | Thai nhi trong 3 tháng cuối =====
MERGE (s:Topic {name:"Thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"3 tháng cuối", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thai nhi bắt đầu sử dụng giác quan của nó như khả năng nghe và sờ mó để cảm nhận cơ thể của nó và môi trường bên trong tử cung", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"tuy nhiên, thai cũng không thể nhìn thấy nhiều lắm", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"mắt của bé lúc này có thể cảm nhận được những luồng ánh sáng mạnh, nhưng trong tử cung thì quá tối để có thể nhìn thấy cái gì đó", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"em bé có thể nghe và nhận ra được giọng nói của bạn, cũng như cử động theo điệu nhạc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"thai nhi còn có thể sử dụng hệ thống cơ để tập những động tác quan trọng như động tác thở, nuốt, mút và thậm chí thai nhi có thể bắt đầu mút ngón tay của nó", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

// ===== Article 245 | Chunk 3 | Thai nhi trong 3 tháng cuối =====
MERGE (s:Topic {name:"Thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"3 tháng cuối", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"bạn sẽ cảm nhận được thai nhi đá, thúc và hoạt động này nhiều hơn ở những tuần sớm trong quý ba", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"càng về sau, thai nhi càng lớn, bạn sẽ cảm thấy căng tức, và cảm nhận thai vận động ít hơn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"tử cung càng căng thì bạn sẽ cảm nhận càng ít vận động của thai nhi", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"nếu như bạn cảm thấy bé ít vận động ít hơn bình thường, bạn hãy đếm số vận động của bé, đếm số vận động trong 1 giờ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"nếu em bé vận động dưới 10 lần trong 1 giờ, hãy liên lạc với bác sĩ ngay lập tức", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

// ===== Article 245 | Chunk 4 | Thai nhi trong 3 tháng cuối =====
MERGE (s:Topic {name:"Thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"3 tháng cuối", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"khi sinh, phần lớn trẻ có cân nặng trong khoảng 6-9 pounds (2.7-4.0 kg) và dài 19-21 inches (48.3-53.3 cm)", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"khi thai phát triển, một lớp mỡ được hình thành ở dưới da giúp trẻ giữ nhiệt sau khi sinh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"lớp chất béo này cũng giúp cho da trẻ không nhăn nheo", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

// ===== Article 245 | Chunk 5 | Thai nhi trong 3 tháng cuối =====
MERGE (s:Topic {name:"Thai nhi", layer:"Topic"})
MERGE (tk:Topic {name:"3 tháng cuối", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cuối quý ba, bé sẽ có đầy đủ lông mi và lông mày, và có thể có tóc phủ toàn bộ da đầu", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"hoặc bé sẽ không có tóc", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

MERGE (det3:Detail {name:"móng phát triển đầy đủ ở cả móng tay và móng chân", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det3)
MERGE (det3)-[:CONTEXT]->(tk)

MERGE (det4:Detail {name:"lông tơ và các chất bao phủ trên lớp da trong quý hai bắt đầu mất dần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det4)
MERGE (det4)-[:CONTEXT]->(tk)

MERGE (det5:Detail {name:"bạn có thể thấy một số lông tơ còn sót lại sau khi sinh, nhưng chúng sẽ biến mất trong vòng một vài tuần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det5)
MERGE (det5)-[:CONTEXT]->(tk)

MERGE (det6:Detail {name:"đến cuối quý ba, phần lớn thai nhi sẽ quay đầu xuống và nằm trên xương chậu người mẹ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det6)
MERGE (det6)-[:CONTEXT]->(tk)

MERGE (det7:Detail {name:"phổi là cơ quan trưởng thành sau cùng", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det7)
MERGE (det7)-[:CONTEXT]->(tk)

MERGE (det8:Detail {name:"khi phổi trưởng thành, chúng sẽ tiết ra một chất có ảnh hưởng đến nội tiết trong cơ thể bạn", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det8)
MERGE (det8)-[:CONTEXT]->(tk)

MERGE (det9:Detail {name:"các bác sĩ không biết chính xác tại sao chuyển dạ xảy ra, nhưng chất đó có thể là một nguyên nhân", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det9)
MERGE (det9)-[:CONTEXT]->(tk)

// ===== Article 246 | Chunk 1 | Tiêm phòng cúm khi thai kỳ =====
MERGE (s:Topic {name:"Tiêm phòng cúm", layer:"Topic"})
MERGE (tk:Topic {name:"Thai kỳ", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (pr1:Prevention {name:"tiêm phòng là cách tốt nhất để bảo vệ mẹ và bé", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr1)
MERGE (pr1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"cả mẹ và thai phải đối mặt với nguy cơ mắc các biến chứng nặng do cúm", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

MERGE (pr2:Prevention {name:"việc này đã được thực hiện an toàn cho hàng triệu phụ nữ mang thai trong nhiều năm qua", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr2)
MERGE (pr2)-[:CONTEXT]->(tk)

MERGE (pr3:Prevention {name:"tiêm phòng cúm hàng năm là điều cần thiết", layer:"Prevention"})
MERGE (s)-[:HAS_PREVENTION]->(pr3)
MERGE (pr3)-[:CONTEXT]->(tk)


// ===== Article 87 | Chunk 1 | Viêm vú sau sinh =====
MERGE (s:Topic {name:"Viêm vú sau sinh", layer:"Topic"})
MERGE (ctx:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(ctx)

MERGE (def1:Definition {name:"viêm vú là tình trạng viêm vú chủ yếu do nhiễm khuẩn, thường xảy ra trong thời kỳ cho con bú, đặc biệt trong 6 tuần đầu sau sinh", layer:"Definition"})
MERGE (def1)-[:HAS_DEFINITION]->(s)
MERGE (def1)-[:CONTEXT]->(ctx)



// ===== Article 87 | Chunk 2 | Viêm vú sau sinh =====
MERGE (s:Topic {name:"Viêm vú sau sinh", layer:"Topic"})
MERGE (ctx:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(ctx)

MERGE (sym1:Symptom {name:"đau vú", layer:"Symptom"})
MERGE (sym1)-[:HAS_SYMPTOM]->(s)
MERGE (sym1)-[:CONTEXT]->(ctx)

MERGE (sym2:Symptom {name:"sưng vú", layer:"Symptom"})
MERGE (sym2)-[:HAS_SYMPTOM]->(s)
MERGE (sym2)-[:CONTEXT]->(ctx)

MERGE (sym3:Symptom {name:"vú căng đỏ dạng hình nêm", layer:"Symptom"})
MERGE (sym3)-[:HAS_SYMPTOM]->(s)
MERGE (sym3)-[:CONTEXT]->(ctx)

MERGE (sym4:Symptom {name:"cảm giác nóng rát khi cho con bú", layer:"Symptom"})
MERGE (sym4)-[:HAS_SYMPTOM]->(s)
MERGE (sym4)-[:CONTEXT]->(ctx)

MERGE (sym5:Symptom {name:"sốt", layer:"Symptom"})
MERGE (sym5)-[:HAS_SYMPTOM]->(s)
MERGE (sym5)-[:CONTEXT]->(ctx)

MERGE (sym6:Symptom {name:"ớn lạnh", layer:"Symptom"})
MERGE (sym6)-[:HAS_SYMPTOM]->(s)
MERGE (sym6)-[:CONTEXT]->(ctx)

MERGE (sym7:Symptom {name:"mệt mỏi", layer:"Symptom"})
MERGE (sym7)-[:HAS_SYMPTOM]->(s)
MERGE (sym7)-[:CONTEXT]->(ctx)






// ===== Article 87 | Chunk 3 | Viêm vú sau sinh =====
MERGE (s:Topic {name:"Viêm vú sau sinh", layer:"Topic"})
MERGE (ctx:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(ctx)

MERGE (det1:Detail {name:"chẩn đoán dựa trên hỏi triệu chứng và khám vú", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(ctx)

MERGE (det2:Detail {name:"có thể kèm siêu âm để đánh giá tình trạng nhiễm trùng", layer:"Detail"})
MERGE (det2)-[:HAS_DETAIL]->(s)
MERGE (det2)-[:CONTEXT]->(ctx)

MERGE (det3:Detail {name:"có thể kèm xét nghiệm để đánh giá tình trạng nhiễm trùng", layer:"Detail"})
MERGE (det3)-[:HAS_DETAIL]->(s)
MERGE (det3)-[:CONTEXT]->(ctx)




// ===== Article 87 | Chunk 4 | Viêm vú sau sinh =====
MERGE (s:Topic {name:"Viêm vú sau sinh", layer:"Topic"})
MERGE (ctx:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(ctx)

MERGE (t1:Treatment {name:"dùng kháng sinh theo chỉ định của bác sĩ", layer:"Treatment"})
MERGE (t1)-[:HAS_TREATMENT]->(s)
MERGE (t1)-[:CONTEXT]->(ctx)

MERGE (t2:Treatment {name:"dùng thuốc giảm đau paracetamol hoặc ibuprofen", layer:"Treatment"})
MERGE (t2)-[:HAS_TREATMENT]->(s)
MERGE (t2)-[:CONTEXT]->(ctx)

MERGE (t3:Treatment {name:"chườm ấm để giảm đau", layer:"Treatment"})
MERGE (t3)-[:HAS_TREATMENT]->(s)
MERGE (t3)-[:CONTEXT]->(ctx)

MERGE (ad1:Advice {name:"tiếp tục cho con bú hoặc vắt bỏ sữa để tránh lan tràn nhiễm trùng", layer:"Advice"})
MERGE (ad1)-[:HAS_ADVICE]->(s)
MERGE (ad1)-[:CONTEXT]->(ctx)

MERGE (ad2:Advice {name:"nghỉ ngơi uống nhiều nước và tái khám nếu triệu chứng nặng hơn", layer:"Advice"})
MERGE (ad2)-[:HAS_ADVICE]->(s)
MERGE (ad2)-[:CONTEXT]->(ctx)





// ===== Article 87 | Chunk 5 | Viêm vú sau sinh =====
MERGE (s:Topic {name:"Viêm vú sau sinh", layer:"Topic"})
MERGE (ctx:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(ctx)

MERGE (p1:Prevention {name:"cho bé ngậm bắt vú đúng cách", layer:"Prevention"})
MERGE (p1)-[:HAS_PREVENTION]->(s)
MERGE (p1)-[:CONTEXT]->(ctx)

MERGE (p2:Prevention {name:"bú hết một bên vú trước khi chuyển sang bên kia", layer:"Prevention"})
MERGE (p2)-[:HAS_PREVENTION]->(s)
MERGE (p2)-[:CONTEXT]->(ctx)

MERGE (p3:Prevention {name:"thay đổi tư thế bú để hút hết sữa", layer:"Prevention"})
MERGE (p3)-[:HAS_PREVENTION]->(s)
MERGE (p3)-[:CONTEXT]->(ctx)

MERGE (p4:Prevention {name:"tránh mặc áo ngực quá chật hoặc miếng dán ngực gây ẩm núm vú", layer:"Prevention"})
MERGE (p4)-[:HAS_PREVENTION]->(s)
MERGE (p4)-[:CONTEXT]->(ctx)

MERGE (p5:Prevention {name:"giữ núm vú thoáng", layer:"Prevention"})
MERGE (p5)-[:HAS_PREVENTION]->(s)
MERGE (p5)-[:CONTEXT]->(ctx)

MERGE (p6:Prevention {name:"nếu đau núm vú cần gặp bác sĩ hoặc chuyên gia tư vấn bú mẹ", layer:"Prevention"})
MERGE (p6)-[:HAS_PREVENTION]->(s)
MERGE (p6)-[:CONTEXT]->(ctx)
