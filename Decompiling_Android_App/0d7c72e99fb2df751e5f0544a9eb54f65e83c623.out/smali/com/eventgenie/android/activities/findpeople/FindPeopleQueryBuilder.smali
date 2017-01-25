.class Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;
.super Ljava/lang/Object;
.source "FindPeopleQueryBuilder.java"


# static fields
.field private static final AMPERSAND:Ljava/lang/String; = "&"

.field private static final AMPESAND_X2:Ljava/lang/String; = "&&"

.field private static final PIPE:Ljava/lang/String; = "|"

.field private static final PIPE_X2:Ljava/lang/String; = "||"


# instance fields
.field private final mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

.field private final mContext:Landroid/content/Context;

.field private final mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;
    .param p3, "adapter"    # Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 29
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    .line 31
    return-void
.end method

.method private buildUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "queryKeyword"    # Ljava/lang/String;
    .param p2, "queryLastName"    # Ljava/lang/String;
    .param p3, "queryCompany"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "interests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByKeyword()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 114
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    const-string v5, "keywords="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByLastName()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 122
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    const-string v5, "lastNames="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_3
    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByCompany()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 130
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_4
    const-string v5, "companyName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {p3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByVisitorGroup()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 138
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_6
    const-string/jumbo v5, "visitorGroup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, "firstRun":Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "group":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 146
    const-string v5, "&&"

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/4 v0, 0x0

    .line 149
    :cond_7
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    .end local v0    # "firstRun":Z
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mConfig:Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/FindPeopleConfig;->isSearchByInterest()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 155
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_9
    const-string/jumbo v5, "tags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v0, 0x1

    .line 161
    .restart local v0    # "firstRun":Z
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "interestString":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 163
    const-string v5, "&&"

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/4 v0, 0x0

    .line 166
    :cond_a
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    .end local v0    # "firstRun":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interestString":Ljava/lang/String;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public buildQuery()Ljava/lang/String;
    .locals 17

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v12

    .line 35
    .local v12, "max":I
    const-string v4, ""

    .line 36
    .local v4, "queryCompany":Ljava/lang/String;
    const-string v3, ""

    .line 37
    .local v3, "queryLastName":Ljava/lang/String;
    const-string v2, ""

    .line 41
    .local v2, "queryKeyword":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "interests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v5, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_9

    .line 45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v8}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getOriginalPageTitle(I)Ljava/lang/String;

    move-result-object v13

    .line 46
    .local v13, "newTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v8}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 47
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mContext:Landroid/content/Context;

    sget v16, Lcom/eventgenie/android/R$string;->find_people_page_keywords:I

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    sget v1, Lcom/eventgenie/android/R$id;->search_keyword:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    sget v1, Lcom/eventgenie/android/R$id;->search_lastname:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    sget v1, Lcom/eventgenie/android/R$id;->search_company:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 53
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->mContext:Landroid/content/Context;

    sget v16, Lcom/eventgenie/android/R$string;->find_people_page_visitor_group:I

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 55
    .local v11, "list":Landroid/widget/ListView;
    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v10

    .line 56
    .local v10, "len":I
    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 57
    .local v7, "checked":Landroid/util/SparseBooleanArray;
    const-string v14, ""

    .line 59
    .local v14, "tags":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v10, :cond_4

    .line 60
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v16, "||"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 64
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 59
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v14}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v7    # "checked":Landroid/util/SparseBooleanArray;
    .end local v9    # "j":I
    .end local v10    # "len":I
    .end local v11    # "list":Landroid/widget/ListView;
    .end local v14    # "tags":Ljava/lang/String;
    :cond_5
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 73
    .restart local v11    # "list":Landroid/widget/ListView;
    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v10

    .line 74
    .restart local v10    # "len":I
    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 75
    .restart local v7    # "checked":Landroid/util/SparseBooleanArray;
    const-string v14, ""

    .line 77
    .restart local v14    # "tags":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3
    if-ge v9, v10, :cond_8

    .line 78
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v16, "||"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 82
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11, v9}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 86
    :cond_8
    invoke-static {v14}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v7    # "checked":Landroid/util/SparseBooleanArray;
    .end local v9    # "j":I
    .end local v10    # "len":I
    .end local v11    # "list":Landroid/widget/ListView;
    .end local v13    # "newTitle":Ljava/lang/String;
    .end local v14    # "tags":Ljava/lang/String;
    .end local v15    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v1, p0

    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/activities/findpeople/FindPeopleQueryBuilder;->buildUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
