.class public Lcom/eventgenie/android/ui/help/QuotaTableHelper;
.super Ljava/lang/Object;
.source "QuotaTableHelper.java"


# static fields
.field private static final COLORFILTER_GREEN:Landroid/graphics/ColorFilter;

.field private static final COLORFILTER_RED:Landroid/graphics/ColorFilter;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mGreenTick:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mRedCross:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "#DC1414"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->COLORFILTER_RED:Landroid/graphics/ColorFilter;

    .line 57
    const-string v0, "#007F0E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateOverridingColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->COLORFILTER_GREEN:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mGreenTick:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mRedCross:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mGreenTick:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->COLORFILTER_GREEN:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mRedCross:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->COLORFILTER_RED:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method

.method private static beautify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const-string v0, ""

    .line 200
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createRow(Ljava/lang/String;JJ)Landroid/widget/TableRow;
    .locals 8
    .param p1, "column1"    # Ljava/lang/String;
    .param p2, "quota"    # J
    .param p4, "achieved"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 77
    iget-object v2, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/eventgenie/android/R$layout;->table_row_quotas_data:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "row":Landroid/view/View;
    cmp-long v2, p4, v6

    if-gez v2, :cond_0

    const-wide/16 p4, 0x0

    .line 80
    :cond_0
    cmp-long v2, p2, v6

    if-gez v2, :cond_1

    const-wide/16 p2, 0x0

    .line 84
    :cond_1
    cmp-long v2, p4, p2

    if-ltz v2, :cond_2

    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mGreenTick:Landroid/graphics/drawable/Drawable;

    .line 90
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    sget v2, Lcom/eventgenie/android/R$id;->view1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v2, Lcom/eventgenie/android/R$id;->view2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v2, Lcom/eventgenie/android/R$id;->view3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v2, Lcom/eventgenie/android/R$id;->view4:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    check-cast v1, Landroid/widget/TableRow;

    .end local v1    # "row":Landroid/view/View;
    return-object v1

    .line 87
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "row":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mRedCross:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private createTitleRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "string2"    # Ljava/lang/String;
    .param p3, "string3"    # Ljava/lang/String;
    .param p4, "string4"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->table_row_quotas_title:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "row":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->view1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget v1, Lcom/eventgenie/android/R$id;->view2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget v1, Lcom/eventgenie/android/R$id;->view3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v1, Lcom/eventgenie/android/R$id;->view4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p4}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->beautify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    check-cast v0, Landroid/widget/TableRow;

    .end local v0    # "row":Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public populate(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "response"    # Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    .prologue
    .line 112
    sget v2, Lcom/eventgenie/android/R$id;->section_daily_quotas:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 116
    .local v16, "quotaView":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->header_daily_quotas:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/eventgenie/android/R$string;->header_meeting_quota:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 118
    if-nez p2, :cond_0

    .line 119
    const/4 v12, 0x0

    .line 120
    .local v12, "hasPerDayQuota":Z
    const/4 v11, 0x0

    .line 186
    .local v11, "hasEventWideQuota":Z
    :goto_0
    if-nez v12, :cond_8

    if-nez v11, :cond_8

    .line 187
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    const/4 v2, 0x0

    .line 190
    :goto_1
    return v2

    .line 123
    .end local v11    # "hasEventWideQuota":Z
    .end local v12    # "hasPerDayQuota":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingQuotaType()I

    move-result v2

    sget-object v4, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_EVENT:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 124
    const/4 v12, 0x0

    .line 125
    .restart local v12    # "hasPerDayQuota":Z
    const/4 v11, 0x1

    .line 127
    .restart local v11    # "hasEventWideQuota":Z
    sget v2, Lcom/eventgenie/android/R$id;->dailyQuotaTable:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TableLayout;

    .line 128
    .local v14, "quotaTable":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$string;->quota_table_title_period:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/eventgenie/android/R$string;->quota_table_title_quota:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/eventgenie/android/R$string;->quota_table_title_achieved:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v7, Lcom/eventgenie/android/R$string;->quota_table_title_status:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->createTitleRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$string;->quota_table_value_event:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetPerEvent()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetAchieved()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->createRow(Ljava/lang/String;JJ)Landroid/widget/TableRow;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 139
    .end local v11    # "hasEventWideQuota":Z
    .end local v12    # "hasPerDayQuota":Z
    .end local v14    # "quotaTable":Landroid/widget/TableLayout;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingQuotaType()I

    move-result v2

    sget-object v4, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_DAY:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetPerEventDay()Ljava/util/Map;

    move-result-object v15

    .line 141
    .local v15, "quotaTarget":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingTargetAchievedPerEventDay()Ljava/util/Map;

    move-result-object v13

    .line 143
    .local v13, "quotaAchieved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    .line 144
    :cond_2
    const/4 v12, 0x0

    .line 145
    .restart local v12    # "hasPerDayQuota":Z
    const/4 v11, 0x0

    .restart local v11    # "hasEventWideQuota":Z
    goto/16 :goto_0

    .line 147
    .end local v11    # "hasEventWideQuota":Z
    .end local v12    # "hasPerDayQuota":Z
    :cond_3
    const/4 v12, 0x0

    .line 148
    .restart local v12    # "hasPerDayQuota":Z
    const/4 v11, 0x1

    .line 150
    .restart local v11    # "hasEventWideQuota":Z
    sget v2, Lcom/eventgenie/android/R$id;->dailyQuotaTable:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TableLayout;

    .line 151
    .restart local v14    # "quotaTable":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$string;->quota_table_title_period:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/eventgenie/android/R$string;->quota_table_title_quota:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/eventgenie/android/R$string;->quota_table_title_achieved:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    sget v7, Lcom/eventgenie/android/R$string;->quota_table_title_status:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->createTitleRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v10

    .line 158
    .local v10, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v10}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v9

    .line 161
    .local v9, "days":Luk/co/alt236/easycursor/EasyCursor;
    :goto_2
    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 162
    const-string v2, "name"

    invoke-interface {v9, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 165
    .local v17, "target":I
    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 169
    .local v8, "achieved":I
    :goto_3
    move/from16 v0, v17

    int-to-long v4, v0

    int-to-long v6, v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->createRow(Ljava/lang/String;JJ)Landroid/widget/TableRow;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 175
    .end local v8    # "achieved":I
    .end local v17    # "target":I
    :cond_4
    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_2

    .line 165
    .restart local v17    # "target":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 178
    .end local v3    # "name":Ljava/lang/String;
    .end local v17    # "target":I
    :cond_6
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 181
    .end local v9    # "days":Luk/co/alt236/easycursor/EasyCursor;
    .end local v10    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v11    # "hasEventWideQuota":Z
    .end local v12    # "hasPerDayQuota":Z
    .end local v13    # "quotaAchieved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "quotaTable":Landroid/widget/TableLayout;
    .end local v15    # "quotaTarget":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    const/4 v12, 0x0

    .line 182
    .restart local v12    # "hasPerDayQuota":Z
    const/4 v11, 0x0

    .restart local v11    # "hasEventWideQuota":Z
    goto/16 :goto_0

    .line 190
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_1
.end method
