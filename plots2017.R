## Pre class survey results: Bio Res Fall 2017

library(wordcloud)
library(RColorBrewer)
library(likert)

## load data
data <- read.delim(file="data/survey_responsesFall2017.tsv")
attach(data)

series <- c(1, 2, 3, 4, 5)
labs <- c("Strongly agree", "Moderately agree", "Neutral", "Moderately disagree", "Strongly disagree")

## bio background plots
jpeg(file="figures/2017/genetics.jpg")
par(oma=c(4,4,3,3))
genetics <- factor(I.m.confident.in.my.knowledge.of.molecular.genetics..eg..DNA.sequences., levels = series)
plot(genetics, main="My previous classes have provided \nadequate background in genetics", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/apply.knowledge.jpg")
par(oma=c(4,4,3,3))
apply.knowledge <- factor(I.feel.prepared.to.apply.knowledge.from.my.other.biology.classes.to.address.interesting.research.questions, levels = series)
plot(apply.knowledge, main="I feel prepared to apply knowledge \nfrom other biology classes to address \ninteresting research questions", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

## stats, data analysis, computers
jpeg(file="figures/2017/stat.tests.jpg")
par(oma=c(4,4,3,3))
stat.tests <- factor(I.m.comfortable.performing.statistical.tests.and.building.graphs.using.software.like.Microsoft.Excel, levels = series)
plot(stat.tests, main="I'm comfortable with performing statistical tests \nusing software like Microsoft Excel", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/improve.data.analysis.jpg")
par(oma=c(4,4,3,3))
improve.data.analysis <- factor(I.m.interested.in.improving.my.data.analysis.capabilities, levels = series)
plot(improve.data.analysis, main="I'm interested in improving my \ndata analysis capabilities", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/manage.files.jpg")
par(oma=c(4,4,3,3))
manage.files <- factor(I.m.comfortable.managing.files.and.directories.on.a.standard.PC..like.you.d.find.in.a.computer.lab., levels = series)
plot(manage.files, main="I'm comfortable managing files and directories", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/file.backup.jpg")
par(oma=c(4,4,3,3))
file.backup <- factor(I.regularly.archive..back.up..computer.files.for.my.classes.and.or.personal.use, levels = series)
plot(file.backup, main="I regularly back up and/or archive computer files", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/remote.servers.jpg")
par(oma=c(4,4,3,3))
remote.servers <- factor(I.have.experience.working.with.data.stored.in.remote.servers, levels = series)
plot(remote.servers, main="I have experience storing or analyzing data \nin remote servers", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/computers.essential.jpg")
par(oma=c(4,4,3,3))
computers.essential <- factor(Computer.skills.will.be.essential.to.my.future.profession, levels = series)
plot(computers.essential, main="Computer skills will be essential \nin my future profession", ylab="number of respondents", las=2, names.arg = labs)
dev.off()

jpeg(file="figures/2017/computers.experience.jpg")
par(oma=c(4,4,3,3))
plot(Do.you.have.any.experience.with.computer.science..taken.classes..workshops..self.taught.., main="Previous computer science training", ylab="number of respondents", las=2, names.arg = c("No", "Yes (formal)", "Yes (informal)"))
dev.off()

# wordclouds
jpeg(file="figures/2017/apprehensive.jpg")
wordcloud(What.about.this.class.makes.you.most.apprehensive., min.freq = 2, colors=brewer.pal(9, "Purples"))
dev.off()
jpeg(file="figures/2017/interested.jpg")
wordcloud(What.are.you.most.interested.in.learning.this.semester., min.freq = 2, colors=brewer.pal(9, "Greens"))
dev.off()
detach(data)
