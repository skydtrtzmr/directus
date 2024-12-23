{
  "message": "select \"submitted_questions\".\"id\", \"submitted_questions\".\"status\", \"submitted_questions\".\"sort\", \"submitted_questions\".\"user_created\", \"submitted_questions\".\"date_created\", \"submitted_questions\".\"user_updated\", \"submitted_questions\".\"date_updated\", \"submitted_questions\".\"question\", \"submitted_questions\".\"student\", \"submitted_questions\".\"submitted_paper_chapter\", \"submitted_questions\".\"option_number\", \"submitted_questions\".\"submitted_ans_q_mc_single\", \"submitted_questions\".\"question_type\", \"submitted_questions\".\"submitted_ans_q_mc_multi\", \"submitted_questions\".\"submitted_ans_q_mc_binary\", \"submitted_questions\".\"submitted_ans_q_mc_flexible\", \"submitted_questions\".\"score\", \"submitted_questions\".\"point_value\", \"submitted_questions\".\"incomplete_point_value\" from \"submitted_questions\" where \"submitted_questions\".\"id\" = $1 order by \"submitted_questions\".\"sort\" asc limit $2 - 无效的类型 uuid 输入语法: \"undefined\"",
  "extensions": {
    "code": "INTERNAL_SERVER_ERROR"
  }
}


module.exports = async function(data) {
    const chapter_question_list = data.submitted_chapter_quesions;
	let sum_question_score = chapter_question_list
    	.reduce((sum, item) => sum + Number(item.score), 0);
	return sum_question_score;
}


module.exports = async function(data) {
    const paper_chapter_list = data.submitted_paper_chapters;
	let sum_chapter_score = paper_chapter_list
    	.reduce((sum, item) => sum + Number(item.score), 0);
	return sum_chapter_score;
}
