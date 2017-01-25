.class public Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;
.super Ljava/lang/Object;
.source "ScheduleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v1

    .line 51
    .local v1, "manageTimeFormat":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->start:I

    if-ne v4, v5, :cond_0

    .line 52
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {p0, p2, v3, v1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    return v2

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->end:I

    if-ne v4, v5, :cond_2

    .line 56
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->schedule_end_formatter:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {p0, p2, v7, v1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->day:I

    if-ne v4, v5, :cond_3

    .line 65
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-MM-yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->label:I

    if-ne v4, v5, :cond_4

    .line 70
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 72
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->day_formatter:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDayFromSqlite(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->color_indicator:I

    if-ne v4, v5, :cond_6

    .line 76
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 77
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 79
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 83
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->location:I

    if-ne v4, v5, :cond_8

    .line 84
    if-eqz p2, :cond_7

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->session_room_formatter:I

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 88
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 90
    goto/16 :goto_0
.end method
