% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EnrichmentSpiralize.R
\name{extract_ntop_pathways}
\alias{extract_ntop_pathways}
\title{Extract and Store Top Pathways for Each Sample}
\usage{
extract_ntop_pathways(ssgsea_kegg, nTop = 5)
}
\arguments{
\item{ssgsea_kegg}{Dataframe containing SSGSEA KEGG results with samples as columns and pathways as rows.}

\item{nTop}{Integer, number of top pathways to select for each sample.}
}
\value{
A dataframe with columns 'Pathway', 'Sample', and 'Value' representing the top pathways for each sample.
}
\description{
This function processes a dataframe containing SSGSEA KEGG results. It allows specifying the number
of top pathways to extract for each sample based on their scores, and stores these in a new dataframe
with sample names and pathway scores.
}
\examples{
# Example: Generating input data for the extract_ntop_pathways function

# Define example pathways
pathways <- c("Pathway_A", "Pathway_B", "Pathway_C", "Pathway_D", "Pathway_E",
              "Pathway_F", "Pathway_G", "Pathway_H", "Pathway_I", "Pathway_J")

# Define example samples
samples <- c("Sample_1", "Sample_2", "Sample_3")

# Generate random SSGSEA KEGG scores between 0 and 1
set.seed(123)  # For reproducibility
ssgsea_scores <- matrix(runif(length(pathways) * length(samples), min = 0, max = 1),
                        nrow = length(pathways), ncol = length(samples),
                        dimnames = list(pathways, samples))

# Convert to a data frame
ssgsea_kegg <- as.data.frame(ssgsea_scores)

# Extract the top 3 pathways for each sample
top_pathways <- extract_ntop_pathways(ssgsea_kegg, nTop = 3)

}
