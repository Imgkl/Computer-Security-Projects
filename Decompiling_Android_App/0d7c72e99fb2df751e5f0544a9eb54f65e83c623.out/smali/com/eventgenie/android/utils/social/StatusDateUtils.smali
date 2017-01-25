.class public Lcom/eventgenie/android/utils/social/StatusDateUtils;
.super Landroid/text/format/DateUtils;
.source "StatusDateUtils.java"


# static fields
.field private static instance:Lcom/eventgenie/android/utils/social/StatusDateUtils; = null

.field protected static mTimestampLabelDayAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelDaysAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelHourAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelHoursAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelJustNow:Ljava/lang/String; = null

.field protected static mTimestampLabelMinutesAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelMonthAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelMonthsAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelToday:Ljava/lang/String; = null

.field protected static mTimestampLabelYearAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelYearsAgo:Ljava/lang/String; = null

.field protected static mTimestampLabelYesterday:Ljava/lang/String; = null

.field public static final millisInADay:J = 0x5265c00L

.field public static weekdays:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->instance:Lcom/eventgenie/android/utils/social/StatusDateUtils;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/StatusDateUtils;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->instance:Lcom/eventgenie/android/utils/social/StatusDateUtils;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYesterday:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_today:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelToday:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_just_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelJustNow:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_minutes_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMinutesAgo:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_hours_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelHoursAgo:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_hour_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelHourAgo:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_days_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelDaysAgo:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_day_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelDayAgo:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_months_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMonthsAgo:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_month_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMonthAgo:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_years_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYearsAgo:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->timestamp_year_ago:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYearAgo:Ljava/lang/String;

    .line 106
    :cond_0
    sget-object v0, Lcom/eventgenie/android/utils/social/StatusDateUtils;->instance:Lcom/eventgenie/android/utils/social/StatusDateUtils;

    return-object v0
.end method

.method public static isYesterday(J)Z
    .locals 6
    .param p0, "date"    # J

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x1

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 119
    .local v0, "currentDate":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 122
    .local v1, "yesterdayDate":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 124
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTimeDiffString(J)Ljava/lang/String;
    .locals 1
    .param p1, "timedate"    # J

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeDiffString(JZ)Ljava/lang/String;
    .locals 23
    .param p1, "timedate"    # J
    .param p3, "useUtc"    # Z

    .prologue
    .line 149
    if-eqz p3, :cond_0

    .line 150
    const-string v19, "UTC"

    invoke-static/range {v19 .. v19}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17

    .line 155
    .local v17, "startDateTime":Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 156
    .local v6, "endDateTime":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 158
    .local v10, "milliseconds1":J
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 159
    .local v12, "milliseconds2":J
    sub-long v4, v10, v12

    .line 161
    .local v4, "diff":J
    const-wide/32 v20, 0x36ee80

    div-long v8, v4, v20

    .line 162
    .local v8, "hours":J
    const-wide/32 v20, 0xea60

    div-long v14, v4, v20

    .line 163
    .local v14, "minutes":J
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v8

    sub-long v14, v14, v20

    .line 167
    invoke-static/range {p1 .. p2}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->isYesterday(J)Z

    move-result v7

    .line 169
    .local v7, "isYesterday":Z
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_2

    const-wide/16 v20, 0x18

    cmp-long v19, v8, v20

    if-gez v19, :cond_2

    .line 170
    const-wide/16 v20, 0x1

    cmp-long v19, v8, v20

    if-nez v19, :cond_1

    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelHourAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 213
    :goto_1
    return-object v19

    .line 152
    .end local v4    # "diff":J
    .end local v6    # "endDateTime":Ljava/util/Calendar;
    .end local v7    # "isYesterday":Z
    .end local v8    # "hours":J
    .end local v10    # "milliseconds1":J
    .end local v12    # "milliseconds2":J
    .end local v14    # "minutes":J
    .end local v17    # "startDateTime":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .restart local v17    # "startDateTime":Ljava/util/Calendar;
    goto :goto_0

    .line 170
    .restart local v4    # "diff":J
    .restart local v6    # "endDateTime":Ljava/util/Calendar;
    .restart local v7    # "isYesterday":Z
    .restart local v8    # "hours":J
    .restart local v10    # "milliseconds1":J
    .restart local v12    # "milliseconds2":J
    .restart local v14    # "minutes":J
    :cond_1
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelHoursAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 172
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-gtz v19, :cond_4

    .line 173
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_3

    .line 174
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMinutesAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 176
    :cond_3
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelJustNow:Ljava/lang/String;

    goto :goto_1

    .line 180
    :cond_4
    if-eqz v7, :cond_5

    .line 181
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYesterday:Ljava/lang/String;

    goto :goto_1

    .line 189
    :cond_5
    const-wide/32 v20, 0x5265c00

    div-long v2, v4, v20

    .line 190
    .local v2, "ago":J
    const-wide/16 v20, 0x16d

    cmp-long v19, v2, v20

    if-lez v19, :cond_7

    .line 191
    const-wide/16 v20, 0x16d

    div-long v20, v2, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v18, v0

    .line 192
    .local v18, "years":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 193
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYearsAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 195
    :cond_6
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelYearAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 199
    .end local v18    # "years":I
    :cond_7
    const-wide/16 v20, 0x1e

    cmp-long v19, v2, v20

    if-lez v19, :cond_9

    .line 200
    const-wide/16 v20, 0x1e

    div-long v20, v2, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 201
    .local v16, "months":I
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 202
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMonthsAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 204
    :cond_8
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelMonthAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 210
    .end local v16    # "months":I
    :cond_9
    const-wide/16 v20, 0x1

    cmp-long v19, v2, v20

    if-lez v19, :cond_a

    .line 211
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelDaysAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 213
    :cond_a
    sget-object v19, Lcom/eventgenie/android/utils/social/StatusDateUtils;->mTimestampLabelDayAgo:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1
.end method
