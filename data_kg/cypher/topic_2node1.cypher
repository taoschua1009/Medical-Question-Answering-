// ===== Article 146 | Chunk 7 | Tập thể thao sau sinh =====
MERGE (s:Topic {name:"Tập thể thao sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"sau sinh có thể bắt đầu bằng đi bộ nhanh vài lần/tuần để hồi phục thể lực", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"sau đó tăng dần lên các môn nặng hơn", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"đi bộ ngoài trời còn giúp cả mẹ và con hít thở không khí trong lành", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)


// ===== Article 200 | Chunk 1 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"chảy máu âm đạo", layer:"Symptom"})
MERGE (s1)-[:HAS_SYMPTOM]->(s)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"chuột rút", layer:"Symptom"})
MERGE (s2)-[:HAS_SYMPTOM]->(s)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"đau lưng", layer:"Symptom"})
MERGE (s3)-[:HAS_SYMPTOM]->(s)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"đau cổ", layer:"Symptom"})
MERGE (s4)-[:HAS_SYMPTOM]->(s)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"đau khớp", layer:"Symptom"})
MERGE (s5)-[:HAS_SYMPTOM]->(s)
MERGE (s5)-[:CONTEXT]->(tk)

MERGE (s6:Symptom {name:"đau đáy chậu", layer:"Symptom"})
MERGE (s6)-[:HAS_SYMPTOM]->(s)
MERGE (s6)-[:CONTEXT]->(tk)

MERGE (s7:Symptom {name:"đau quanh vết mổ (nếu mổ lấy thai)", layer:"Symptom"})
MERGE (s7)-[:HAS_SYMPTOM]->(s)
MERGE (s7)-[:CONTEXT]->(tk)

MERGE (s8:Symptom {name:"căng tức vú", layer:"Symptom"})
MERGE (s8)-[:HAS_SYMPTOM]->(s)
MERGE (s8)-[:CONTEXT]->(tk)

MERGE (s9:Symptom {name:"các vấn đề về bàng quang", layer:"Symptom"})
MERGE (s9)-[:HAS_SYMPTOM]->(s)
MERGE (s9)-[:CONTEXT]->(tk)

MERGE (s10:Symptom {name:"vấn đề về đường ruột", layer:"Symptom"})
MERGE (s10)-[:HAS_SYMPTOM]->(s)
MERGE (s10)-[:CONTEXT]->(tk)

MERGE (s11:Symptom {name:"bệnh trĩ", layer:"Symptom"})
MERGE (s11)-[:HAS_SYMPTOM]->(s)
MERGE (s11)-[:CONTEXT]->(tk)

MERGE (det1:Detail {name:"cơ thể cần thời gian hồi phục sau sinh, bất kể quá trình chuyển dạ và sinh nở", layer:"Detail"})
MERGE (det1)-[:HAS_DETAIL]->(s)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 200 | Chunk 2 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"thời gian kéo dài cơn đau sau sinh: phân loại, cường độ và thời gian của các triệu chứng sau sinh ở mỗi người là khác nhau", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (det2:Detail {name:"một số kéo dài vài ngày, trong khi những triệu chứng khác có thể kéo dài vài tuần", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det2)
MERGE (det2)-[:CONTEXT]->(tk)

// ===== Article 200 | Chunk 3 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"cách kiểm soát cơn đau sau sinh: có nhiều cách để kiểm soát cơn đau, bao gồm các phương pháp tự điều trị, thuốc không kê đơn và thuốc theo toa", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (a1:Advice {name:"trao đổi với bác sĩ sản phụ khoa (ob-gyn) về các lựa chọn giảm đau trước khi xuất viện", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

// ===== Article 200 | Chunk 4 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"tìm kiếm sự hỗ trợ khẩn cấp ngay lập tức nếu bạn đau ngực, ho hoặc thở hổn hển", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"tìm kiếm sự hỗ trợ khẩn cấp ngay lập tức nếu bạn co giật", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tìm kiếm sự hỗ trợ khẩn cấp ngay lập tức nếu bạn có suy nghĩ làm tổn thương bản thân hoặc em bé", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"tìm kiếm sự hỗ trợ khẩn cấp ngay lập tức nếu bạn đau bụng dưới dữ dội", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"tìm kiếm sự hỗ trợ khẩn cấp ngay lập tức nếu bạn đau/sưng/ấn đau ở chân", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 200 | Chunk 5 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Sau sinh", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu đau đầu không thuyên giảm sau khi uống thuốc", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu đau đầu dữ dội kèm thay đổi về thị lực", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu sốt trên 38°C", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu buồn nôn và nôn dai dẳng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu đau hoặc buốt rát khi đi tiểu nghiêm trọng hoặc kéo dài hơn vài ngày sau sinh", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu chảy máu nhiều (thấm qua hai băng vệ sinh một giờ trong hơn một hoặc hai giờ)", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu vệt đỏ trên vú hoặc cục u mới gây đau ở vú", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

MERGE (a8:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu cơn đau không biến mất hoặc trở nên tồi tệ hơn do cắt tầng sinh môn/rách tầng sinh môn/vết mổ tại bụng", layer:"Advice"})
MERGE (a8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a8)

MERGE (a9:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu đỏ hoặc tiết dịch từ vết cắt tầng sinh môn/rách tầng sinh môn/vết mổ ở bụng", layer:"Advice"})
MERGE (a9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a9)

MERGE (a10:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu sản dịch có mùi khó chịu", layer:"Advice"})
MERGE (a10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a10)

MERGE (a11:Advice {name:"liên hệ bác sĩ sản phụ khoa ngay lập tức nếu cảm giác chán nản kéo dài hơn 10 ngày sau khi sinh", layer:"Advice"})
MERGE (a11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a11)

// ===== Article 200 | Chunk 6 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"Ibuprofen thường là lựa chọn ưu tiên vì ít đi qua sữa mẹ", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"Acetaminophen cũng an toàn khi cho con bú", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (t3:Treatment {name:"Cả hai đều có sẵn ở nhà thuốc", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t3)
MERGE (t3)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"Trao đổi với bác sĩ nếu cần loại khác hoặc kết hợp thuốc giảm đau", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (t4:Treatment {name:"Bác sĩ có thể kê đơn thuốc opioid yếu liều thấp (Codein) trong thời gian ngắn", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t4)
MERGE (t4)-[:CONTEXT]->(tk)

// ===== Article 200 | Chunk 7 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"sau khi sinh, tử cung co bóp và giãn ra để co lại về kích thước bình thường, gọi là 'cơn đau hậu sản', giống đau bụng kinh hoặc co thắt chuyển dạ", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (p1:Population {name:"phổ biến hơn ở phụ nữ đã sinh con và trong vài ngày đầu cho con bú", layer:"Population"})
MERGE (p1)-[:CONTEXT]->(tk)
MERGE (s)-[:AFFECTS]->(p1)

MERGE (a1:Advice {name:"dùng miếng đệm sưởi ấm lên bụng giúp giảm khó chịu", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (t2:Treatment {name:"ibuprofen có thể hiệu quả hơn acetaminophen", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 200 | Chunk 8 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trao đổi với bác sĩ sản phụ khoa nếu bị đau lưng, cổ hoặc khớp, có thể do căng cơ lưng, yếu cơ bụng và thay đổi nội tiết tố", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"bác sĩ có thể đề nghị gặp vật lý trị liệu", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"sử dụng miếng đệm sưởi ấm", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"uống ibuprofen", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"hỏi bác sĩ về tư thế cho con bú tốt nhất (thư giãn vai, dùng gối đỡ cánh tay, lưng được hỗ trợ)", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (a6:Advice {name:"nhìn lên trên khi cho con bú", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

MERGE (a7:Advice {name:"gập khuỷu tay thay vì cổ tay", layer:"Advice"})
MERGE (a7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a7)

// ===== Article 200 | Chunk 9 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"chườm túi nước đá/gel lạnh (hiệu quả nhất 24-72 giờ đầu)", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"đắp miếng giảm đau witch-hazel", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"uống ibuprofen", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (t4:Treatment {name:"ngồi lên gối", layer:"Treatment"})
MERGE (t4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t4)

MERGE (t5:Treatment {name:"tắm ngồi", layer:"Treatment"})
MERGE (t5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t5)

MERGE (t6:Treatment {name:"làm sạch bộ phận sinh dục bằng nước ấm từ bình xịt khi đi vệ sinh", layer:"Treatment"})
MERGE (t6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t6)

MERGE (t7:Treatment {name:"cho con bú khi nằm nghiêng", layer:"Treatment"})
MERGE (t7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t7)

MERGE (t8:Treatment {name:"hỏi bác sĩ về thuốc xịt/kem gây tê hoặc thuốc làm mềm phân", layer:"Treatment"})
MERGE (t8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t8)

MERGE (det1:Detail {name:"vùng đáy chậu có thể đau và sưng trong vài tuần sau sinh thường, nếu bị rách hoặc cắt tầng sinh môn, cơn đau nghiêm trọng hơn và mất nhiều thời gian hơn để chữa lành", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 200 | Chunk 10 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"dùng thuốc giảm đau theo khuyến cáo/kê đơn", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"sử dụng miếng đệm sưởi ấm hoặc đai nịt bụng", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

MERGE (t3:Treatment {name:"chọn tư thế cho con bú ít gây áp lực lên vết mổ", layer:"Treatment"})
MERGE (t3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t3)

MERGE (det1:Detail {name:"vết cắt ở bụng có thể đau trong vài tuần đầu", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

// ===== Article 200 | Chunk 11 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"cải thiện tình trạng căng tức vú: khi sữa về, vú có thể rất căng cứng (căng sữa). cho con bú thường xuyên hơn hoặc chườm lạnh có thể giúp giảm đau và áp lực.", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu không cho con bú, mặc áo ngực chật có thể giúp ngừng sản xuất sữa sớm hơn.", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"đau núm vú cũng bình thường và có thể cải thiện bằng kỹ thuật cho con bú đúng cách.", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 200 | Chunk 12 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thử ngâm mình trong bồn nước ấm", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"xịt nước ấm lên bộ phận sinh dục bằng bình xịt khi đi vệ sinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"để vòi nước chảy khi ở trong phòng tắm", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"uống nhiều nước", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (s1:Symptom {name:"muốn đi tiểu nhưng không thể", layer:"Symptom"})
MERGE (s1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s1)

MERGE (s2:Symptom {name:"cảm thấy đau và buốt rát khi đi tiểu", layer:"Symptom"})
MERGE (s2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_SYMPTOM]->(s2)

// ===== Article 200 | Chunk 13 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"xử lý táo bón hoặc đầy hơi", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"có thể khó đi cầu trong vài ngày sau sinh", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"có thể sợ đi cầu do đau (bệnh trĩ hoặc vết rách tầng sinh môn)", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"hoặc xì hơi không cố ý", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"cách cải thiện: uống nhiều nước, đi bộ ngắn, ăn thực phẩm giàu chất xơ, hỏi bác sĩ về thuốc làm mềm phân hoặc thuốc nhuận tràng", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

// ===== Article 200 | Chunk 14 | Hồi phục sau sinh =====
MERGE (s:Topic {name:"Hồi phục sau sinh", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (t1:Treatment {name:"giãn tĩnh mạch ở âm hộ hoặc trĩ (trong/quanh hậu môn) khi mang thai có thể nặng hơn sau sinh, hoặc xuất hiện lần đầu do rặn quá nhiều", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)

MERGE (t2:Treatment {name:"phương pháp điều trị để giảm sưng và ngứa: thuốc xịt/thuốc mỡ tại chỗ, nhiệt khô, tắm ngồi, gạc witch-hazel lạnh", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

MERGE (a1:Advice {name:"rặn khi đi đại tiện có thể làm bệnh trĩ nặng hơn, hỏi bác sĩ về thuốc làm mềm phân", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)


// ===== Article 205 | Chunk 2 | Chuyển dạ và sinh thường =====
MERGE (s:Topic {name:"Chuyển dạ và sinh thường", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"liên hệ đội hộ sinh khi: các cơn co đều nhau và mỗi 10 phút bạn có 3 cơn co. vỡ nước ối. các cơ co mạnh và bạn cần giảm đau. bạn lo lắng về bất cứ điều gì."})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu bạn đến bệnh viện hoặc nhà hộ sinh trước khi cuộc chuyển dạ của bạn thực sự bắt đầu, các nhân viên y tế (bác sĩ hoặc hộ sinh) có thể khuyên bạn về nhà và đợi."})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"khi chuyển dạ bắt đầu, hộ sinh sẽ thăm khám thường xuyên để theo dõi tình trạng của bạn cũng như quá trình chuyển dạ để có thể hỗ trợ bạn, bao gồm cả giảm đau nếu cần thiết."})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (a4:Advice {name:"bạn có thể đi bộ xung quanh hoặc tìm một tư thế mà cảm thấy thoải mái để quá trình chuyển dạ suôn sẻ."})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (a5:Advice {name:"hộ sinh sẽ yêu cầu kiểm tra âm đạo để theo dõi quá trình chuyển dạ. nếu bạn không muốn thì bạn có thể từ chối, tuy nhiên nữ hộ sinh của bạn sẽ giải thích sự cần thiết của việc thăm khám thường xuyên đó."})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)

MERGE (det1:Detail {name:"cổ tử cung của bạn cần phải mở khoảng 10 cm để cho em bé có thể ra ngoài. đó được gọi là cổ tử cung đã mở hết."})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"trong giai đoạn 1 của chuyển dạ, thời gian từ lúc bắt đầu đến khi cố tử cung mở hết thường kéo dài 8 - 12 giờ. nếu bạn mang thai lần 2, lần 3, giai đoạn này sẽ rút ngắn lại (khoảng 5 tiếng)."})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"khi sắp kết thúc giai đoạn 1 của chuyển dạ, bạn có thể cảm thấy cảm giác mót rặn."})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

// ===== Article 205 | Chunk 3 | Chuyển dạ và sinh thường =====
MERGE (s:Topic {name:"Chuyển dạ và sinh thường", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (app1:Application {name:"hộ sinh sẽ theo dõi sức khỏe của cả bạn và em bé để bảo đảm rằng cả hai đều ổn trong quá trình chuyển dạ", layer:"Application"})
MERGE (app1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app1)

MERGE (det1:Detail {name:"việc theo dõi này bao gồm việc sử dụng một thiết bị cầm tay. Thiết bị này dùng để nghe tiếng tim thai mỗi 15 phút", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (a1:Advice {name:"lúc này bạn có thể đi lại thoải mái nếu bạn muốn", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (app2:Application {name:"nếu có các dấu hiệu nghi ngờ, hoặc khi bạn lựa chọn giảm đau trong đẻ bằng gây tê tủy sống thì tim thai cần phải được theo dõi liên tục bằng máy đo tim thai (Máy CTG – Cardiotocography)", layer:"Application"})
MERGE (app2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app2)

MERGE (det2:Detail {name:"máy này bao gồm hai đầu dò được gắn vào bụng của bạn. Một đầu dò để theo dõi các cơn co tử cung và một đầu dò để theo dõi nhịp tim thai. Các đầu dò đó được kết nối với một máy theo dõi và trên đó bạn sẽ thấy nhịp tim thai và cơn co tử cung của bạn", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

MERGE (det3:Detail {name:"có một số máy sử dụng đầu dò được gắn vào da đầu em bé, điều này giúp theo dõi nhịp tim thai chính xác hơn", layer:"Detail"})
MERGE (det3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det3)

MERGE (a2:Advice {name:"bạn có thể yêu cầu được theo dõi tim thai liên tục dù không có vấn đề gì", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"tuy nhiên, như vậy bạn sẽ phải nằm yên một chỗ và hạn chế cử động", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

MERGE (app3:Application {name:"nếu nhịp tim thai của bạn có vấn đề, việc sử dụng máy CTG là cần thiết", layer:"Application"})
MERGE (app3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_APPLICATION]->(app3)

MERGE (a4:Advice {name:"tuy nhiên, nếu đường biểu diễn tim thai trên máy CTG là bình thường thì máy có thể được tháo ra để bạn có thể đi lại thoải mái", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)

MERGE (det4:Detail {name:"máy theo dõi nhịp tim thai bằng đầu dò gắn trên da đầu em bé sẽ chỉ được tháo khi em bé đã được sinh ra", layer:"Detail"})
MERGE (det4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det4)

// ===== Article 205 | Chunk 4 | Chuyển dạ và sinh thường =====
MERGE (s:Topic {name:"Chuyển dạ và sinh thường", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"chuyển dạ có thể chậm hơn so với dự kiến", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (c1:Cause {name:"cơn co tử cung không đều", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"cơn co tử cung yếu", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"em bé đang trong một tư thế không thuận lợi để sinh thường", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (t1:Treatment {name:"chọc ối", layer:"Treatment"})
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t1)

MERGE (t2:Treatment {name:"truyền oxytocin", layer:"Treatment"})
MERGE (t2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_TREATMENT]->(t2)

// ===== Article 58 | Chunk 5 | Thuốc gây hậu quả nghiêm trọng =====
MERGE (s:Topic {name:"Thuốc gây hậu quả nghiêm trọng", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"cocaine gây tật đầu nhỏ", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"cocaine gây IQ thấp", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"cocaine gây dị tật đường tiết niệu", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"cocaine gây dị tật tim", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"cocaine gây đột quỵ thai nhi", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

MERGE (c6:Cause {name:"methamphetamine tăng nguy cơ sẩy thai", layer:"Cause"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c6)

MERGE (c7:Cause {name:"methamphetamine tăng nguy cơ sinh non", layer:"Cause"})
MERGE (c7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c7)

MERGE (c8:Cause {name:"methamphetamine gây trẻ nhẹ cân", layer:"Cause"})
MERGE (c8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c8)

MERGE (c9:Cause {name:"methamphetamine gây trẻ khó ăn uống", layer:"Cause"})
MERGE (c9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c9)

MERGE (c10:Cause {name:"cần sa tăng nguy cơ sinh non", layer:"Cause"})
MERGE (c10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c10)

MERGE (c11:Cause {name:"cần sa gây trẻ nhẹ cân", layer:"Cause"})
MERGE (c11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c11)

MERGE (c12:Cause {name:"cần sa gây hội chứng cai sơ sinh (khóc nhiều, run rẩy)", layer:"Cause"})
MERGE (c12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c12)


// ===== Article 211 | Chunk 1 | Tiếp cận các dấu hiệu sắp sinh con =====
MERGE (s:Topic {name:"Tiếp cận các dấu hiệu sắp sinh con", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (sym1:Symptom {name:"ra ít dịch hồng (ra nhớt hồng âm đạo)", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(sym1)
MERGE (sym1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"chảy máu nhiều", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)

// ===== Article 211 | Chunk 2 | Tiếp cận các dấu hiệu sắp sinh con =====
MERGE (s:Topic {name:"Tiếp cận các dấu hiệu sắp sinh con", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (det1:Detail {name:"thai nhi có cử động trong tử cung là dấu hiệu cho thấy em bé khoẻ mạnh", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 211 | Chunk 3 | Tiếp cận các dấu hiệu sắp sinh con =====
MERGE (s:Topic {name:"Tiếp cận các dấu hiệu sắp sinh con", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"dịch ối bình thường là dịch trong, có màu vàng nhạt hoặc hồng nhạt", layer:"Detail"})
MERGE (det1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det1)

MERGE (det2:Detail {name:"dịch ối bất thường là dịch có màu xanh lá cây, hoặc có máu", layer:"Detail"})
MERGE (det2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_DETAIL]->(det2)

// ===== Article 211 | Chunk 4 | Tiếp cận các dấu hiệu sắp sinh con =====
MERGE (s:Topic {name:"Tiếp cận các dấu hiệu sắp sinh con", layer:"Topic"})
MERGE (tk:Topic {name:"Bà bầu", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (det1:Detail {name:"cơn gò tử cung của chuyển dạ bình thường sẽ có khoảng nghỉ giữa các cơn co", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

MERGE (comp1:Complication {name:"cơn gò tử cung liên tục là dấu hiệu không bình thường", layer:"Complication"})
MERGE (s)-[:HAS_COMPLICATION]->(comp1)
MERGE (comp1)-[:CONTEXT]->(tk)



// ===== Article 88 | Chunk 1 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (def1:Definition {name:"rối loạn chức năng tình dục là tình trạng có vấn đề trong đời sống tình dục", layer:"Definition"})
MERGE (s)-[:HAS_DEFINITION]->(def1)
MERGE (def1)-[:CONTEXT]->(tk)
MERGE (det1:Detail {name:"có 4 dạng chính: rối loạn ham muốn, rối loạn kích thích, rối loạn cực khoái, rối loạn đau khi quan hệ", layer:"Detail"})
MERGE (s)-[:HAS_DETAIL]->(det1)
MERGE (det1)-[:CONTEXT]->(tk)

// ===== Article 88 | Chunk 2 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (s1:Symptom {name:"giảm hoặc không quan tâm đến tình dục", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s1)
MERGE (s1)-[:CONTEXT]->(tk)

MERGE (s2:Symptom {name:"không cảm nhận hoặc không duy trì được đáp ứng tình dục", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s2)
MERGE (s2)-[:CONTEXT]->(tk)

MERGE (s3:Symptom {name:"khó đạt cực khoái", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s3)
MERGE (s3)-[:CONTEXT]->(tk)

MERGE (s4:Symptom {name:"đau khi cực khoái", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s4)
MERGE (s4)-[:CONTEXT]->(tk)

MERGE (s5:Symptom {name:"đau trong hoặc sau khi quan hệ", layer:"Symptom"})
MERGE (s)-[:HAS_SYMPTOM]->(s5)
MERGE (s5)-[:CONTEXT]->(tk)

// ===== Article 88 | Chunk 3 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"nếu liên tục không muốn quan hệ hoặc không thấy thoải mái, nên trao đổi với bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

// ===== Article 88 | Chunk 4 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (c1:Cause {name:"thuốc tránh thai", layer:"Cause"})
MERGE (c1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c1)

MERGE (c2:Cause {name:"thuốc hóa trị", layer:"Cause"})
MERGE (c2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c2)

MERGE (c3:Cause {name:"bệnh tiểu đường", layer:"Cause"})
MERGE (c3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c3)

MERGE (c4:Cause {name:"bệnh cao huyết áp", layer:"Cause"})
MERGE (c4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c4)

MERGE (c5:Cause {name:"rượu", layer:"Cause"})
MERGE (c5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c5)

MERGE (c6:Cause {name:"viêm âm đạo", layer:"Cause"})
MERGE (c6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c6)

MERGE (c7:Cause {name:"trầm cảm", layer:"Cause"})
MERGE (c7)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c7)

MERGE (c8:Cause {name:"vấn đề quan hệ", layer:"Cause"})
MERGE (c8)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c8)

MERGE (c9:Cause {name:"lạm dụng tình dục", layer:"Cause"})
MERGE (c9)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c9)

MERGE (c10:Cause {name:"mang thai", layer:"Cause"})
MERGE (c10)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c10)

MERGE (c11:Cause {name:"sau sinh", layer:"Cause"})
MERGE (c11)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c11)

MERGE (c12:Cause {name:"cho con bú", layer:"Cause"})
MERGE (c12)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c12)

MERGE (c13:Cause {name:"mãn kinh (giảm estrogen)", layer:"Cause"})
MERGE (c13)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c13)

MERGE (c14:Cause {name:"căng thẳng", layer:"Cause"})
MERGE (c14)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c14)

MERGE (c15:Cause {name:"mệt mỏi", layer:"Cause"})
MERGE (c15)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c15)

MERGE (c16:Cause {name:"thói quen lâu dài", layer:"Cause"})
MERGE (c16)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_CAUSE]->(c16)

// ===== Article 88 | Chunk 5 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"thay đổi thói quen, thời điểm, tư thế", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)

MERGE (a2:Advice {name:"dùng kem hoặc chất bôi trơn, có thể bổ sung estrogen", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a2)-[:CONTEXT]->(tk)

MERGE (a3:Advice {name:"tăng cường màn dạo đầu, kích thích âm vật, dùng máy rung, thủ dâm", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a3)-[:CONTEXT]->(tk)

MERGE (a4:Advice {name:"thay đổi tư thế, dùng dầu bôi trơn, đi tiểu trước khi quan hệ, tắm ấm", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a4)-[:CONTEXT]->(tk)

MERGE (a5:Advice {name:"nếu vẫn đau cần gặp bác sĩ", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a5)
MERGE (a5)-[:CONTEXT]->(tk)

// ===== Article 88 | Chunk 6 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (t1:Treatment {name:"estrogen hữu ích trong mãn kinh hoặc sau cắt tử cung, buồng trứng", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t1)
MERGE (t1)-[:CONTEXT]->(tk)
MERGE (t2:Treatment {name:"Viagra và testosterone có thể được nhắc đến nhưng chưa đủ nghiên cứu, có tác dụng phụ, cần bác sĩ chỉ định", layer:"Treatment"})
MERGE (s)-[:HAS_TREATMENT]->(t2)
MERGE (t2)-[:CONTEXT]->(tk)

// ===== Article 88 | Chunk 7 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"tìm hiểu cơ thể", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a2:Advice {name:"loại trừ bệnh lý", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)
MERGE (a3:Advice {name:"thực hành tập trung cảm giác", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)
MERGE (a4:Advice {name:"tưởng tượng", layer:"Advice"})
MERGE (a4)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a4)
MERGE (a5:Advice {name:"tập Kegel", layer:"Advice"})
MERGE (a5)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a5)
MERGE (a6:Advice {name:"thử hoạt động tình dục khác như massage, quan hệ bằng miệng, thủ dâm", layer:"Advice"})
MERGE (a6)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a6)

// ===== Article 88 | Chunk 8 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)

MERGE (a1:Advice {name:"trao đổi sở thích, tôn trọng giới hạn của nhau", layer:"Advice"})
MERGE (a1)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a1)

MERGE (a2:Advice {name:"nếu không thể nói chuyện, nên nhờ tư vấn hoặc bác sĩ", layer:"Advice"})
MERGE (a2)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a2)

MERGE (a3:Advice {name:"nếu cảm thấy bị lợi dụng, cần báo cho bác sĩ", layer:"Advice"})
MERGE (a3)-[:CONTEXT]->(tk)
MERGE (s)-[:HAS_ADVICE]->(a3)

// ===== Article 88 | Chunk 9 | Rối loạn chức năng tình dục ở nữ giới =====
MERGE (s:Topic {name:"Rối loạn chức năng tình dục ở nữ giới", layer:"Topic"})
MERGE (tk:Topic {name:"Khác", layer:"Topic"})
MERGE (s)-[:APPLIED_IN]->(tk)
MERGE (a1:Advice {name:"bác sĩ chẩn đoán nguyên nhân, điều trị phù hợp, hoặc giới thiệu đến chuyên gia tư vấn tình dục nếu cần", layer:"Advice"})
MERGE (s)-[:HAS_ADVICE]->(a1)
MERGE (a1)-[:CONTEXT]->(tk)