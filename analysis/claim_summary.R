claims <- read.csv("data/claims.csv", check.names = FALSE)
projects <- read.csv("data/projects.csv", check.names = FALSE)

summary_by_project <- aggregate(
  claim_id ~ project_id + confidence + evidence_type,
  data = claims,
  FUN = length
)
write.csv(summary_by_project, "claims_by_project.csv", row.names = FALSE)

unknown_sources <- claims[is.na(claims$source_paper_id) | claims$source_paper_id == "", ]
write.csv(unknown_sources, "claims_needing_sources.csv", row.names = FALSE)

message("Claims: ", nrow(claims), "; projects: ", nrow(projects))
