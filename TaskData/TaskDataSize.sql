# Get summed size of TaskData grouped by Case State (you might want to group by category)

SELECT iwa_case.State, sum(length(iwa_taskdata.TaskData)) 
	from iwa_taskdata
		inner join iwa_task on iwa_task.TaskId = iwa_taskdata.taskid
		inner join iwa_case on iwa_task.CaseId = iwa_case.CaseId
    group by iwa_case.State
		