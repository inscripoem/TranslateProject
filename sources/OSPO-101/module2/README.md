---
status: translated
title: "OSPO 101 Training Modules - Module 2"
author: TODO Group
collector: mudongliang
collected_date: 20240822
translated_date: 20241010
translator: Hao Guo
link: https://github.com/todogroup/ospo-career-path/blob/main/OSPO-101/module2/README.md
---

# 1. 介绍

## 1.1 课程：简介

在本节中，我们将提供几个重要的开源商业模式的定义，以及它们之间的比较。 我们还将讨论每种方法的相对优势和劣势，并重点介绍哪些模型可以用于哪些业务场景。

## 1.2 学习目标

在本节结束时，您应该能够：

- 定义最常用的开源商业模式。
- 解释这些商业模式之间的异同。
- 了解哪些模型最适合哪些业务场景。

## 2. 课程：定义

### 2.1 主要的开源商业模式有哪些？

有两种方法可以划分开源商业模式的概念——那些使用开源（大多数组织）的公司，以及那些主要生产开源的公司。 先说消费端。

#### 消费

![Image description](strategic-use.png)

上文重点介绍的 Gartner 最近的一项研究表明，一流的软件和技术组织使用其产品中大约 80% 的软件来自开源，然后在该软件堆栈之上构建其余 20% 的附加值为他们的客户提供产品。这样做可以让他们将有限的工程资源集中在差异化价值上，同时与开源生态系统的其余部分分担通用代码的开发成本。

那些生产开源代码的公司通常分为以下类型的商业模式（尽管他们也可能战略性地使用开源）：

#### 许可

这种模式依赖于商业许可和开源许可下的双重许可软件，通常会产生产品的“社区版”和“企业版”，客户可以根据他们可能需要的功能进行选择产品。一个例子是 Oracle MySQL 数据库，它在商业许可证和 GNU 公共许可证下获得许可（后面的模块将更详细地介绍许可证）。

#### 托管

在此模型中，公司在云托管的 SaaS（软件即服务模型）中提供开源产品。这方面的主要例子是亚马逊（亚马逊网络服务）和谷歌（谷歌云）等公司，它们以强化的、可扩展的、企业级配置托管开源技术。

#### 支持

企业往往希望利用开源提供的技术创新，但更关心在开源产品上运行业务。在这种情况下，他们求助于 RedHat 和 IBM 等公司，它们提供支持、技术指导、专业服务和培训，以帮助企业在开源平台上运行业务应用程序。

#### 开放核心

这通常涉及一个功能强大的核心产品，它是免费和开源的。围绕核心，商业实体提供闭源软件，以增加或扩展其功能。这些附加组件然后作为商业软件出售，它们也可以与支持模型结合以提供扩展的培训和技术支持。

### 2.2 比较开源商业模式

在比较这些开源商业模式时，重要的是要注意不同的企业选择特定模式的原因不同，并且如上所述，有时会出现组合模型的情况（例如 Open Core & Support）。以下是企业选择每种模式的一些主要原因：

#### 消费

当您的企业拥有差异化的知识产权但需要降低成本和复杂性时，战略性地使用开源软件并在该开源基础平台之上构建您的产品或服务，您可以访问共享创新，您可以利用这些创新来构建引人注目的产品，而无需自己建造一切。

#### 许可

利用双重许可策略，您有机会获得产品“社区”版本的消费和共享投入的价值，同时销售产品的“企业”版本以实现收入并继续资助“社区版。它还使您能够让客户“先试后买”，并有可能发展他们的业务以要求访问您的付费企业版。

#### 托管

提供开源项目/产品的托管解决方案允许已构建基础设施以支持代码的公司为自己的利益提供相同的软件作为服务给他们的客户。与许可模式类似，这允许组织从软件中获得收入，这有助于资助他们的托管基础​​设施，并允许他们继续开发开源项目。

#### 支持

如果一家技术公司拥有内部专业知识并因为一个或多个开源项目做出贡献而享有盛誉，则提供这些项目的“强化”企业版本并与技术支持和培训捆绑在一起，使他们能够继续在该开源项目中工作项目，并让他们为客户提供一个坚实的基础平台，然后他们可以在该平台上可靠地运行业务软件。在 RedHat Enterprise Linux 上运行的股票市场就是这种模式的一个很好的例子。

#### 开放核心

这种商业模式可以很好地运作，但如果社区认为在开源代码之上提供的闭源扩展理所当然地成为开源核心的一部分，它也会给组织带来不良声誉。这种模式需要一种微妙的平衡，即提供大型企业愿意支付的附加值，同时仍然允许项目的免费社区版本对个人以及中小型企业有用。

# 3. 制定开源战略

## 3.1 课程：简介

在本节中，我们将展示如何创建组织开源战略，讨论这样做的价值和必要性，然后讨论该战略将如何影响开源政策的实施的注意事项。

## 3.2 学习目标：

在本节结束时，您应该能够：

- 解释创建组织开源战略的必要性和价值
- 描述一个组织可能使用的不同类型的策略
- 阐明分阶段实施计划，以帮助将战略转化为组织政策

## 3.3 开源战略概述

### 3.3.1 什么是开源策略？

战略是一个非常广泛的术语，我们可以讨论（或争论）几个小时，但当我们谈论开源时，我们的意思是非常具体的：

- 简洁、高级的文档
- 基于组织的业务目标
- 将业务目标映射到开源软件使用和管理指令

参与开源相关活动的每个人都必须能够理解该策略。 它成为就未来开源政策和流程达成一致的参考文件。 在持续的基础上，它是制定新决策以及建立计划支持和承诺的重要工具。

许多组织还使用开源战略作为建立实施开源最佳实践和政策的授权的工具。

### 3.3.2 要问的主要问题

在创建实用的开源策略时，必须回答三个主要问题。 （前两个问题可以按任一顺序解决。）

 **- 组织希望在哪里使用开源？** 

这个问题非常重要，因为管理开源的最佳实践对于不同的用例有很大的不同。例如，在内部使用开源工具几乎没有风险，不需要任何许可合规性制度，但在分布式软件中嵌入开源需要更多的考虑和支持元素。

 **- 使用开源实现了哪些业务目标？** 

我们已经讨论过公司使用开源软件的原因。明确并认可其中哪些是重要的，将极大地促进对下一个细节级别的决策。

 **- 您的组织将如何确保实现开源业务目标？** 

这些决定为开源管理程序创建了任务。理想情况下，它们反映了从开源中获得最大优势同时有效管理伴随风险的行业最佳实践。

## 3.4 开源战略的价值

### 3.4.1 开源阶梯

当您将许可、社区动态、人才获取和业务动态等所有因素都考虑在内时，开源可能是一个复杂的话题。 典型组织的开源之旅有几个站点：

![Image description](os-ladder.png)

让我们将其中的每一个都分解开来：

- #### 消费者

组织最常见的起点是作为其商业产品中的开源软件用户。积极使用开源组件将提高您区分和减少交付商业产品的总体时间和成本的能力。以下是开源消费策略的必要组成部分：

- 一种战略分类方案，用于指导决定使用哪些开源软件

- 确保公司履行其使用开源软件的所有义务

- 部署自动化工作流软件以评估/批准开源使用

- 建立一个开源审查委员会 (OSRB) 作为所有开源活动的交换所

- 增加对工程、产品管理和法律方面的员工人数和基础设施的投资，以管理封闭源代码/开源软件的组合

- #### 参与者

一旦您的公司在产品或服务中成功使用开源软件，您就可以扩展您的策略以参与开源社区。除非您已经从社区聘请了经验丰富的开发人员，否则您首先需要更密切地与社区互动，以提高您的知名度并开始吸引您需要的人才。以下是开源参与策略的必要组成部分：

- 监控社区交流平台，如聊天服务器、邮件列表、论坛和网站，以随时了解项目进展

- 参加相关会议和聚会，与社区建立关系

- 赞助项目活动和基金会以提高社区内的知名度

- 教育开发人员如何参与开源项目并为之做出贡献

- #### 贡献者

随着贵公司参与度的增加以及您开始为开源项目贡献代码，您需要有选择地参与目标项目和社区以推动您的

公司的需要。为战略性开源项目做出贡献可以帮助您的组织获得额外的价值，因为代码贡献可以帮助塑造项目中满足公司需求的未来功能。

以下是开源贡献策略的必要组成部分：

- 聘请一名员工主管来领导开源战略并管理 OSRB

- 雇用对您的产品至关重要的关键开源社区的贡献者和提交者

- 部署开源协作工具以支持开源使用和贡献

- 添加开源开发者资源

- 增加在工程、产品管理和法律方面的投资，以与现有的外部社区互动

- #### 领导者

如果一项开源技术对您的业务或产品变得至关重要，您可能希望在该项目的战略和技术方向上拥有发言权。然而，与传统软件不同的是，您不一定能通过金钱“购买”进入或影响领导层。在开源项目中，那些从事工作的人可以帮助确定方向。

开源战略阶梯的最后一步是领导力。此方案建立在所有先前方案的基础上，以利用新兴的技术趋势来建立领导地位。

通过与项目成员建立信任并保持对项目的高水平持续贡献，可以获得现有开源社区的领导角色。

这种情况需要对目标开源社区和联盟进行大量投资

制定领导议程。以下是开源领导力战略的必要组成部分：

- 增加与目标开源社区的互动
- 有选择地采用开放标准来推动公司的需求
- 参与开源基金会
- 建立开源项目、组织或基金会
- 主要在工程、产品管理和法律方面进行重大投资，以在外部社区和行业联盟中建立领导地位

### 3.4.2 考虑您当前和未来的需求

如您所见，开源战略的自然演变建立在一系列需要随着时间增加投资的步骤之上。重要的是要注意，对于您使用的每个开源项目或代码库，您的组织应该扮演什么角色的决定是不同的。

在某些情况下，作为一个小型、可靠维护的开源项目的简单消费者可能是可以接受的，但在其他情况下，如果开源项目成为您的产品或技术的核心元素，您可能需要考虑成为一个积极的参与者和/或贡献者。

如果开源项目是您的业务和产品的基础，那么努力成为这项工作的领导者是个好主意，特别是如果它是您的组织帮助启动的开源项目。

另一个需要考虑的重要因素是，您的组织在项目中的参与程度会随着时间而改变。制定战略不是“一劳永逸”的事情。准备好定期（6 个月 - 1 年是典型的时间范围）定期审查您的开源策略，以确定您是否需要根据业务或经济状况调整您的参与度。

![Image description](involvement-over-time.png)

## 3.5 课程：实施注意事项

### 3.5.1 分阶段实施

开源有一个经常被引用的短语“早发布，经常发布”。在编码的上下文中，这意味着许多小的更改随着时间的推移相互构建，允许对所有更改进行完整和轻松的代码审查，以及更多健壮的代码，因为提供的更改更容易测试和调试。

在开发开源策略时可以而且应该使用相同的模型。通过与您的中短期目标相关联的基本战略开始，您可以开始参与开源项目和社区，然后作为您的组织调整您的战略（以及您需要制定的后续政策）对开源方式变得更加自在和自信。

一般来说，分阶段方法通常遵循前面显示的阶梯图：

- 制定以有效和高效的方式使用开源的策略（和政策）
- 通过互动/提问、报告错误等开始参与开源项目和社区。
- 一开始做一些小贡献（即使它们不是代码 - 文档是一个很好的入门方式）
- 随着你对开源项目越来越熟悉和依赖，增加你的贡献
- 如果您需要“一席之地”（或者您帮助启动了一个项目），请对开源项目做出持续和有价值的贡献和投资

### 3.5.2 战略的实施注意事项

虽然我们将在下一节中介绍开源组织策略的创建，但这是一个很好的机会，可以考虑您的策略对您将要实施的策略的影响。

您需要考虑的最大因素是时间和金钱。在实施您的策略时，您需要使用多少时间？您准备为实施您选择的战略投入多少资源（资金和人员）？

#### 时间

与技术中的几乎任何其他事物一样，有效地使用开源需要投入时间——这既涉及人力资源（员工），也涉及有效理解和规划您将使用的开源项目的发布周期.并非每个项目都具有相同的发布节奏，当您制定政策以确定您使用哪些版本的代码以及何时使用时，您需要意识到这一点。

虽然我们将在其他模块中介绍安全性和与新的开源版本保持同步，但请注意，您必须考虑在哪些时间范围内就开源项目的消费和员工参与做出决定.

#### 钱

在开源介绍课程中，我们简要介绍了开源可能“免于”许可成本，但这绝不意味着它没有其他相关成本。

有效地参与开源，无论是简单地有效地和战略性地使用它，还是推动特定标准都需要花钱，主要是在人员配备方面。您不需要从庞大的员工开始（稍后会详细介绍），但您应该考虑在开始时在软件工程师和支持人员（法律、业务、项目管理）方面的需求制定政策以帮助管理组织的开源工作。

考虑时间和金钱因素（并随着时间的推移慢慢调整明智的计划）是确保从您的开源战略中获得的政策长期成功的最佳方法。

### 3.5.3 战略目标示例

以下是您在制定战略的过程中可以定义的一些目标示例——这绝不是一个详尽的列表——您的组织可能拥有所有这些，或者可能没有包含在此列表中的其他目标：

- 通过与技术领导者合作增加创新
- 使用已经开发和测试过的代码加速部署
- 通过使用免费的、已经调试过的代码来降低开发成本
- 通过使用商业工具和组件的免费替代品来降低部署成本
- 利用社区维护降低代码维护成本
- 提供与其他开源软件的互操作性
- 促进合作伙伴或客户创建新功能

### 3.5.4 采取行动的例子

虽然我们将在下一节中更详细地介绍如何定义开源策略，但这里有一些示例操作，您可以在构建策略时为支持您定义的目标而采取以下措施：

- 评估政策和采购流程
  - 在开源、可用的商业和内部开发选项中进行很好的选择
  - 确保许可条款与您的使用和 IP 策略兼容
  - 考虑支持和生命周期成本
  - 代码跟踪策略和流程，可准确了解在何处使用什么软件
- 确保您遵循既定政策的审核流程
- 确保始终满足所有 OSS 许可要求的合规流程
- 行动是开源策略中“橡胶上路”的地方。针对特定目标创建了开源管理计划的授权并塑造了它。

上述操作是完整开源管理程序的最基本要素；然而，一些组织可能不需要所有这些元素。例如，从不在其产品中分发开源的组织通常不需要实施许可合规流程。一些组织增加了其他行动，例如：软件支持和维护、确保软件安全的步骤、围绕开源贡献或领导力的目标，或执行人员参与的特定任务。

一些组织会在其战略声明中对行动进行优先级排序，以表明执行的紧迫性或顺序。一些组织发现将所有者分配给各个操作很有用。

随着您的开源管理程序的开发进入下一阶段，这些行动声明将被纳入实施该战略的政策和流程中。

建立新市场或事实上的标准

招聘和留住顶尖技术人才

# 4. 制定开源政策

## 4.1 课程：简介

在本节中，我们将讨论如何制定开源策略，为执行您选择的开源策略设置框架。 将特别强调影响这些政策的成功和组织采用的关键因素。

## 4.2 学习目标

在本节结束时，您应该能够：

- 描述实施开源政策的过程，以推动您选择的策略的执行
- 了解在定义政策时需要考虑哪些关键因素
- 解释如何最好地设计鼓励组织广泛采用的策略
- 阐明行业最佳实践在开源政策制定中的作用

## 4.4 课程：开源政策领域概述

### 4.4.1 开源政策应该关注什么？

开始他们的开源之旅的组织有时会陷入从“FUD”（恐惧、不确定性和怀疑）的角度定义政策的细节中。虽然在未来的模块中将更详细地介绍开源合规性等领域，但我们想从更有效利用的角度对所有组织在制定开源政策时应考虑的领域进行总体概述，不仅仅是规避风险。

我们还将尝试解决您如何考虑应该首先关注哪些政策，以及如何在整个组织中社会化这些政策以获得最大效果。

为此，我们将首先介绍任何组织开源政策中应包含的要素——请注意，这不一定是一个详尽的列表，根据您的具体业务情况，可能还有其他项目：

- 发现
- 审查和批准
- 商业采购
- 代码管理与维护
- 社区互动
- 合规
- 高管参与

### 4.4.2 发现

开源发现和评估涵盖了您的团队如何以及在何处找到感兴趣的开源软件，以及该软件被审查以包含在您组织的软件组合中的标准。发现不应该是一次成功或失败的努力。从正确的方向和标准（相对于临时）开始可以简化这个有时困难的过程并避免未来出现问题。

发现有用的开源很少从从头开始开始。大多数组织至少已经使用了一些开源软件，这些代码可以构成内部（批准的）存储库的基础。在查看现有产品组合之外，工程师很容易发挥创造力，但为了降低风险和提高效率，最佳实践要求通过商业供应商分发（Red Hat、Google 等组织）建立一组可信来源，或通过云原生计算基金会等软件基金会。

此外，还有一系列社区、政府和商业工具可用于查找和选择合适的开源项目代码和版本。例如，OpenHub 提供了数千个流行项目的出色元数据，而 Github 本身提供了有关项目发布的仪表板信息。可以从 NIST 漏洞数据库和开源漏洞数据库项目中收集关键安全信息。

让组织的所有级别都参与制定这些发现策略很重要——简单地告诉工程师，他们不能使用开源，除非来自特定的内部存储库，而没有进一步解释，并且没有让他们参与决策过程，很可能会导致“创造性”尝试规避此政策，这使以后更难以遵守。

### 4.4.3 审查和批准

无论你的发现过程多么小心或勤奋，开源代码面临的真正考验必须来自你的审查和批准过程。 批准和审查是您抵御开源可能带来的安全、法律和运营风险的第一道防线。

与发现一样，利用以前审查过的代码可以加快这个过程，所以如果你的开源团队还没有这样做，最佳实践要求创建批准的组件和版本列表、审查和批准的许可证类型以及以前使用的评估原理 和结果。

建立明确的标准（并让从工程师到项目经理的所有利益相关者参与）可以避免发现过程中出现问题并加快审查速度。 此外，重要的是要考虑在此政策中为低风险批准建立捷径，以加快此过程、降低成本并为工程团队遵守这些政策提供更多动力。

### 4.4.4 商业采购

当您第一次想到发现和集成开源代码时，很自然地首先想到的是通过 Internet 自由获取的代码。但是大量的开源代码通过商业采购进入组织。开源通常伴随着商业应用程序和/或是商业应用程序的一个组成部分，并且也经常通过合同开发进入可交付成果。

商业来源的开源所伴随的风险和合规义务与直接获得的开源所伴随的风险和合规义务没有什么不同。最大的不同在于，您的组织不是直接接触和下载开源代码，而是通过长期存在的传统采购流程隐式，甚至是静默地接收该代码。

对于商业采购的开源，行业最佳实践要求与您组织的供应链和采购人员合作，以制定和执行以下政策：

- 报告第三方代码中存在开源元素
- 知识产权验证，并在适当的情况下，赔偿
- 代码扫描和审查供应商治理计划以补充报告（如果有）
- 与下游组件跟踪、发布审计和其他合规活动的文档和集成

### 4.4.5 代码管理与维护

“代码所有权”的概念源于过去15年里许多使用开源软件的公司的实践。在最高的层次上，这种做法为开放源代码在您的组织中提供了一个“面孔”，一个与代码以及开发和维护代码的社区关系密切的“可以接触”的人。代码所有权角色通常还包括协调对该代码的支持，直接或通过第三方。

对“所有权”的需求源于开源的“自服务”特性。管理策略应该规定这些组件需要什么样的管理类型，以及代码所有者的角色和职责。

与代码管理和维护相关的其他任务是

- 归档外部来源的开放源代码
- 创建当前主副本(包括更新、补丁等)供内部使用，作为共享和重用的基础
- 通过审计跟踪跟踪所有权、批准和其他决策

附带的支持模型必须是灵活的、可伸缩的和可持续的，具有低风险和低开销。选项包括:

- 内部支持(如果有资源，专业技能强且风险低)
- 商业支持聚合器
- 有重点的供应商支持关键业务组件和/或技术复杂组件或具有高业务/技术风险的组件的平台

### 4.4.6 社区互动

开源软件通常由志同道合的开发人员社区创建和维护。参与这些社区可为集成和部署其开源软件的组织带来一系列好处，从教育到支持再到错误修复等等。

社区互动不是二元决策。相反，参与是一个连续体。您和您的同事可以选择参与一系列活动中的各种角色，从作为 OSS 消费者的适度开始到持续参与甚至领导。虽然参与水平可以有机地发展，但最好是社区互动水平与组织业务目标保持一致并基于成本效益分析。

以下是需要考虑的一些交互级别：

- 不参与（不推荐）
  - 以个人身份参与
- 不允许与公司有任何联系
- 代表您的公司参与社区
  - 无 IP 传输
  - 贡献需求或错误修复
  - 传送公司开发的二进制文件、库等。
- 为社区提供赞助或支持
- 将公司IP作为OSS发布，建立公司管理的开源项目

### 4.4.7 合规

合规性侧重于遵守开源政策和开源许可条款。对于分发软件的组织而言，许可证合规性是开源管理中最明显的部分，并且通常为建立开源计划办公室提供动力（在下一课程模块中将详细介绍这一点）。

然而，合规性并不是良好治理的“全部”或“全部”——没有人主要为了遵守其许可而使用开源软件。合规性应该与开源管理的其他方面同等对待，而不是作为“警察行动”。

对于不分发软件的组织，合规性侧重于确保遵循开源政策和流程，以确保软件系统和应用程序的安全性、可靠性和可支持性。

合规政策需要明确和详细，并制定规则以遵守组织政策和开源许可条款。对合规性的需求强调了能够在每个版本中识别和编目第三方代码（包括开源）以及附带条款（例如，源代码披露、归属等）的要求。

#### 4.4.8 高管参与

开源管理不仅仅是真正接触代码的开发人员的领域。它也不是唯一属于与保护知识产权 (IP) 相关的公司律师的职权范围。成功的开源管理是一项协作努力，需要许多角色和学科的参与。

一组经常被忽视的参与者是组织的高管。高管们最初可能认为开源技术仅仅是技术实现的一个细节，并满足于通过指挥链参与开源管理。开明的高管将意识到开源的风险/收益平衡及其创新和差异化的潜力，从而使高管更多地参与围绕开源管理政策的关键决策。

对于高管来说，考虑他们在以下政策领域的角色很重要：

- 参与整体开源政策的创建和演变
- 参与开源审批
  - 通常通过法律和业务线
- 参与有关开源贡献、项目赞助等的高层决策
- 接收和审查关于开源活动的定期报告

## 4.5 课程：政策实施注意事项

### 4.5.1 政策制定中的人为因素

与开源相关的政策创建有一些有趣的人类动态，它们不同于传统的 HR 或您的组织可能习惯创建的其他政策。开源的协作和“社区主导”性质更侧重于完成工作，而不是一系列严格或正式的流程。

协作是这里的关键要素。与其严格地将这些政策视为惩罚或消除风险的方法，还需要将它们视为不同群体的机会，包括工程师、项目经理、法律专家甚至高管，就如何充分利用这些政策进行透明和坦率的讨论组织参与开源的情况。

确实，在某些情况下，管理层可能不得不做出与其他团队（通常是工程部门）并不总是一致的政策决策，但让每个人都可以就政策的创建方式发表意见，这将使每个人都更容易遵守并查看这些政策对组织的意义。

### 4.5.2 经济和生产力考虑

制定开源政策时要考虑的另一个因素是它们的实施将如何影响工作效率，从而间接影响您的组织的经济影响。

构建涵盖所有可能情况并需要大量人力和技术基础设施的完全“防弹”政策似乎是“最安全”的方法，但这些可能会产生意想不到的后果，包括使软件开发变得缓慢、笨拙和令人不快，以至于您运行如果没有这种严格的政策，组织可能会失去关键的软件人才。

此外，为此类重量级政策构建必要的流程基础设施在工具和详细的人工监督方面都具有经济成本。对抗构建“完美策略”诱惑的最佳方法是考虑经常重复的开源口头禅“早发布，经常发布”。考虑实施开源策略所需的最少策略集，然后随着您的管理团队和开发组织在开源参与的阶梯上进步，以这些为基础。

# 5. 开源项目办公室介绍

## 5.1 课程：简介

在本节中，我们将讨论开源项目办公室 (OSPO) 在帮助定义战略、实施相关政策和指导组织参与开源方面的作用。 在本系列的后续课程中，将更详细地介绍如何设置和运行 OSPO。

## 5.2 学习目标

在本节结束时，您应该能够：

- 定义开源项目办公室的特征
- 解释开源项目办公室在指导组织开源工作中的作用
- 阐明开源项目办公室可以帮助定义开源成功指标的一些方法

## 5.3 开源项目办公室 (OSPO) 概述

### 5.3.1 什么是 OSPO，为什么我的组织需要它？

中央开源项目办公室是一个指定的地方，在公司内部支持、培育、共享、解释和发展开源。有了这样的办公室，企业可以明确地制定和执行他们的开源战略，为他们的领导者、开发人员、营销人员和其他员工提供他们需要的工具，使开源在他们的运营中取得成功。

传统软件开发和开源开发之间最大的区别之一是开源中使用的高度协作性。对于许多企业来说，在接近开源使用时所需的理念改变并不容易或自然而然地发生。

这就是开源程序的创建可以成为主要福音的地方。通过创建开源项目办公室，企业可以启用、简化和组织开源的使用，使其直接与公司的长期业务计划联系起来。开源项目办公室旨在成为公司开源运营和结构的中心，帮助将所有需要的组件整合在一起。

这可以包括设置代码使用、分发、选择、审计和其他政策，以及培训开发人员、确保法律合规性以及促进和建立社区参与。该办公室还可以提供有关公司内外所有开源事物的宣传和交流。

### 5.3.2 OSPO 的角色

归根结底，一个组织良好的开源项目办公室很有价值，因为它可以促进公司内部的开源使用、贡献和创建，以获得战略优势。

一个成功的办公室可以通过建立支持开发人员及其团队的流程来极大地受益于企业开源的使用。它鼓励标准编码和组织实践、流程和工具集。同时，项目办公室可以帮助避免或消除不必要的、僵化的流程，创意开发人员可能会规避或忽略这些流程，从而威胁项目的安全性和其他方面。

项目办公室的职责各不相同。这些包括：

- 清楚地传达公司内外的开源战略
- 拥有并监督战略的执行
- 促进开源在商业产品和服务中的有效使用
- 确保向开源社区高质量和频繁地发布代码
- 与开发者社区互动并看到公司有效地回馈其他项目
- 在组织内培养开源文化
- 维护开源许可证合规性审查和监督

对于每家公司，开源项目办公室的角色很可能会根据其业务、产品和目标进行自定义配置。没有广泛的模板可以构建适用于所有行业的开源程序，甚至适用于单个行业的所有公司。这可能会使其创建成为一项挑战，但您可以从其他公司中吸取教训，并将它们组合在一起以满足您自己组织的要求。

开源项目办公室的另一个关键作用是，当业务部门开始在其计划中考虑开源时，将实质和事实带入对话中，以便充分了解考虑开源的原因、后果和后果。是实现其目标所必需的。这通常是建立对话框架的问题，以便利益相关者在权衡决定时知道从哪里开始以及考虑什么。

### 5.3.2 OSPO 在定义成功指标中的作用

开源项目经理必须证明其工作的投资回报 (ROI)。让我们来看看 OSPO 如何帮助定义组织评估其开源计划、项目和贡献的一些标准方式。

学习衡量什么、如何定义成功以及如何最好地利用这些信息来推进您的开源计划目标、证明有效性并获得支持是任何 OSPO 的关键职能。

您设定的目标和跟踪的指标将根据您投资开源的原因而有所不同——无论是招募开发人员、通过开放式创新引入新想法和技术、加快上市时间、降低开发成本、或无数其他原因。

根据您的独特战略设定目标非常重要——并寻求执行团队的支持，以确保开源战略与整体业务战略保持一致。 OSPO 可以提供一个中立的位置来帮助您的组织战略性地考虑这些项目。

有经验的 OSPO 员工在构建指标时通常会考虑以下因素：

- 他们的开发人员在外部开源项目中的参与度和影响程度
- 他们的组织在开源社区中的声誉
- 他们招募和留住有才华的开发人员的能力
- 组织自己的开源项目及其开发人员参与的关键业务项目的总体健康状况
- 他们如何管理开源许可证合规性

### 5.3.3 关于 OSPO 创建的最终想法

构建和运行有效的 OSPO 还有许多其他方面。事实上，我们将在本系列的后续课程模块中有专门的部分和课程。目前，要考虑的最重要的事情是，随着您在开源参与的领导/参与阶梯上继续前进，您最终将需要某种形式的 OSPO。

与战略和政策定义一样，重要的是要记住前面引用的“尽早发布，经常发布”的格言。您无需立即为拥有数百人的 OSPO 配备人员即可发挥作用。从具有足够经验来帮助指导您的组织的开源领导者开始，以及可以帮助他们的少量员工，对于大多数组织来说通常是一个足够好的开始。

您会自然而然地发现，运作良好的 OSPO 与许多不同的利益相关者（工程、产品管理，甚至高管）互动，尽管规模很小，但它们的效率却成倍增加。我们将在未来的模块中更多地讨论为 OSPO 寻找和建立开源领导力。
