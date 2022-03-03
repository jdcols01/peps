	
	
**#[1] Copy file --------------------------------------------------------------|

	*cd yourdirectory
	copy https://www2.ed.gov/offices/OSFAP/PEPS/downloadfiles/Schoolfile/schfile.zip . , replace
	unzipfile schfile.zip, replace
	
	infix								///
	str record_type			1-2			///
	str opeid				3-10		///
	str change_indicator	11-11		///
	str school_name			12-81		///
	str loc_name			82-151		///
	str line1_adr			152-186		///
	str line2_adr			187-221		///
	str city				222-246		///
	str state				247-248		///
	str county				249-251		///
	str country				252-276		///
	str zip					277-290		///
	str foreign_province	291-315		///
	str elig_status_ind		316-316		///
	str cert_type_cd		317-317		///
	str approv_ind			318-318		///
	str actn_cd				319-320		///
	str actn_reason_cd		321-322		///
	str actn_dt				323-330		///
	str ppa_sent_dt			331-338		///
	str ppa_execution_dt	339-346		///
	str ppa_expiration_dt	347-354		///
	str pgm_length			355-356		///
	str sch_type			357-357		///
	str acad_cal			358-359		///
	str ethnic_cd			360-360		///
	str filler1				361-361		///
	str region_cd			362-363		///
	str cong_dist			364-371		///
	str sic_cd				372-379		///
	str faads_cd			380-381		///
	str close_dt			382-389		///
	str init_appr_dt		390-397		///
	str disapproval_dt		398-405		///
	str location_reason		406-407		///
	str filler2				408-408		///
	str branch_ind			409-409		///
	str case_team_cd		410-411		///
	str reinstate_dt		412-419		///
	str web_page			420-469		///
	str filler3				470-550		///
	using `"SCHFILE.txt"'
	
**#[2] Clean up file and only keep institution-level records ------------------|
	
	keep if record_type == "01" // only keep institution details
	keep if close_dt == "" // drop all closed locations
	
	drop record_type filler1 close_dt reinstate_dt web_page filler2 filler3

