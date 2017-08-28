## Pre class survey results: Bio Res Fall 2015

## load data
data <- read.delim(file="data/survey_responses.tsv")
attach(data)
series <- c("Strongly disagree", "Moderately disagree", "Neutral", "Moderately agree", "Strongly agree")

## bio background plots
jpeg(file="figures/genetics.jpg")
par(oma=c(4,4,3,3))
genetics <- factor(My.previous.classes.have.provided.adequate.background.in.genetics, levels = series)
plot(genetics, main="My previous classes have provided \nadequate background in genetics", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/evolution.jpg")
par(oma=c(4,4,3,3))
evolution <- factor(My.previous.classes.have.provided.adequate.background.in.evolutionary.theory, levels = series)
plot(evolution, main="My previous classes have provided \nadequate background in evolution", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/apply.knowledge.jpg")
par(oma=c(4,4,3,3))
apply.knowledge <- factor(I.feel.prepared.to.apply.knowledge.from.my.other.classes.in.biology.to.address.interesting.research.questions, levels = series)
plot(apply.knowledge, main="I feel prepared to apply knowledge \nfrom other biology classes to address \ninteresting research questions", ylab="number of respondents", las=2)
dev.off()

## stats, data analysis, computers
jpeg(file="figures/stat.tests.jpg")
par(oma=c(4,4,3,3))
stat.tests <- factor(I.am.comfortable.with.performing.statistical.tests.using.software.like.Microsoft.Excel, levels = series)
plot(stat.tests, main="I'm comfortable with performing statistical tests \nusing software like Microsoft Excel", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/improve.data.analysis.jpg")
par(oma=c(4,4,3,3))
improve.data.analysis <- factor(I.am.interested.in.improving.my.data.analysis.capabilities, levels = series)
plot(improve.data.analysis, main="I'm interested in improving my data analysis capabilities", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/manage.files.jpg")
par(oma=c(4,4,3,3))
manage.files <- factor(I.am.comfortable.managing.files.and.directories.in.an.operating.system.like.Windows, levels = series)
plot(manage.files, main="I'm comfortable managing files and directories", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/file.backup.jpg")
par(oma=c(4,4,3,3))
file.backup <- factor(I.regularly.back.up.and.or.archive.computer.files.for.my.classes.or.personal.use, levels = series)
plot(file.backup, main="I regularly back up and/or archive computer files", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/remote.servers.jpg")
par(oma=c(4,4,3,3))
remote.servers <- factor(I.have.experience.storing.or.analyzing.data.in.remote.servers, levels = series)
plot(remote.servers, main="I have experience storing or analyzing data \nin remote servers", ylab="number of respondents", las=2)
dev.off()

jpeg(file="figures/computers.essential.jpg")
par(oma=c(4,4,3,3))
computers.essential <- factor(Computer.skills.will.be.essential.in.my.future.profession, levels = series)
plot(computers.essential, main="Computer skills will be essential in my future profession", ylab="number of respondents", las=2)
dev.off()
