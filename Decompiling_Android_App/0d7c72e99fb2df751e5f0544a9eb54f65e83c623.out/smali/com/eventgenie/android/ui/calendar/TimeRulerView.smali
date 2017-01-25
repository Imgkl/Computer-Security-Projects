.class public Lcom/eventgenie/android/ui/calendar/TimeRulerView;
.super Landroid/view/View;
.source "TimeRulerView.java"


# static fields
.field public static final DEFAULT_HOUR_HEIGHT:I = 0x50

.field private static final TYPE_MYAGENDA_MARGIN:Ljava/lang/String; = "my_agenda_margin"

.field private static final TYPE_MYAGENDA_PANEL:Ljava/lang/String; = "my_agenda_panel"

.field private static final TYPE_SCHEDULE_HEADER:Ljava/lang/String; = "schedule_header"

.field private static final TYPE_SCHEDULE_MARGIN:Ljava/lang/String; = "schedule_margin"

.field private static final TYPE_SCHEDULE_PANEL:Ljava/lang/String; = "schedule_panel"


# instance fields
.field private final hoursDiff:I

.field private mCalendarForHours:Ljava/util/Calendar;

.field private mDividerColor:I

.field private final mDividerPaint:Landroid/graphics/Paint;

.field private mEventEndHour:I

.field private mEventStartHour:I

.field private mHeaderWidth:I

.field private mHourHeight:I

.field private mLabelColor:I

.field private mLabelPaddingLeft:I

.field private final mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextSize:I

.field private mManageTimeFormat:I

.field private mMarginColor:I

.field private final mMarginPaint:Landroid/graphics/Paint;

.field private timeZoneOfEvent:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0x46

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 60
    const/16 v0, 0x5a

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 62
    const/16 v0, 0x14

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 64
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 65
    const v0, -0x333334

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 66
    const v0, -0x333334

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaint:Landroid/graphics/Paint;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mManageTimeFormat:I

    .line 274
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mCalendarForHours:Ljava/util/Calendar;

    .line 89
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    .line 91
    .local v7, "config":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mManageTimeFormat:I

    .line 93
    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->timeZoneOfEvent:Ljava/util/TimeZone;

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->timeZoneOfEvent:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->hoursDiff:I

    .line 98
    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v0

    const-string v1, "sdfsadfasdf"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getDayBoundary(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 99
    .local v8, "dayBoundary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    .line 100
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventEndHour:I

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 107
    .local v9, "type":Ljava/lang/String;
    const-string v0, "schedule_header"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 109
    const/16 v0, 0x28

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 111
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 112
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 113
    const-string v0, "#6C6B6C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 114
    const-string v0, "#6C6B6C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 115
    const-string v0, "#6C6B6C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventEndHour:I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "schedule_margin"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const/16 v0, 0x2e

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 120
    const/16 v0, 0x50

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 122
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 123
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "schedule_panel"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 129
    const/16 v0, 0x50

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 131
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 132
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 134
    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 135
    const-string v0, "#3F4143"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    goto :goto_0

    .line 136
    :cond_3
    const-string v0, "my_agenda_margin"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const/16 v0, 0x2e

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 138
    const/16 v0, 0x50

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 140
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 141
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 142
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    goto/16 :goto_0

    .line 145
    :cond_4
    const-string v0, "my_agenda_panel"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 147
    const/16 v0, 0x50

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    .line 149
    const/16 v0, 0xd

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    .line 150
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    .line 152
    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    .line 153
    const-string v0, "#3F4143"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    goto/16 :goto_0
.end method

.method private getTimeStringFormatted(II)Ljava/lang/String;
    .locals 8
    .param p1, "hour"    # I
    .param p2, "manageTimeFormat"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 286
    new-instance v0, Lorg/joda/time/DateTime;

    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->timeZoneOfEvent:Ljava/util/TimeZone;

    invoke-static {v2}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v7

    move v2, v1

    move v3, v1

    move v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/DateTime;-><init>(IIIIIILorg/joda/time/DateTimeZone;)V

    .line 288
    .local v0, "dt":Lorg/joda/time/DateTime;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getDateTimeWithSpecificFormatHourOnly(Lorg/joda/time/DateTime;ILjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHeaderWidth()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    return v0
.end method

.method public getHourHeight()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    return v0
.end method

.method public getTimeVerticalOffset(JLjava/lang/String;)I
    .locals 7
    .param p1, "timeMillis"    # J
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Lorg/joda/time/DateTime;

    iget-object v5, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->timeZoneOfEvent:Ljava/util/TimeZone;

    invoke-static {v5}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v5

    invoke-direct {v0, p1, p2, v5}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 197
    .local v0, "dateTime":Lorg/joda/time/DateTime;
    sget-object v5, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v5}, Lorg/joda/time/DateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v1

    .line 198
    .local v1, "hourOfDay":I
    sget-object v5, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v5}, Lorg/joda/time/DateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v2

    .line 200
    .local v2, "minuteOfDay":I
    iget v5, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    sub-int v5, v1, v5

    mul-int/lit8 v5, v5, 0x3c

    add-int v3, v5, v2

    .line 202
    .local v3, "minutes":I
    iget v5, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    mul-int/2addr v5, v3

    div-int/lit8 v4, v5, 0x3c

    .line 203
    .local v4, "result":I
    return v4
.end method

.method public getTimeVerticalOffset(JLjava/lang/String;Ljava/util/TimeZone;)I
    .locals 5
    .param p1, "timeMillis"    # J
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 212
    new-instance v2, Landroid/text/format/Time;

    invoke-virtual {p4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 214
    iget v3, v2, Landroid/text/format/Time;->hour:I

    iget v4, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    iget v4, v2, Landroid/text/format/Time;->minute:I

    add-int v0, v3, v4

    .line 215
    .local v0, "minutes":I
    iget v3, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    mul-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x3c

    .line 216
    .local v1, "result":I
    return v1
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    move/from16 v23, v0

    .line 226
    .local v23, "hourHeight":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerPaint:Landroid/graphics/Paint;

    .line 227
    .local v7, "dividerPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mDividerColor:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginPaint:Landroid/graphics/Paint;

    .line 231
    .local v13, "marginPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mMarginColor:I

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 235
    .local v20, "labelPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelColor:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 238
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v29

    .line 241
    .local v29, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v29

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    .line 242
    .local v26, "labelHeight":I
    div-int/lit8 v27, v26, 0x2

    .line 244
    .local v27, "labelOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getRight()I

    move-result v31

    .line 247
    .local v31, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventEndHour:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    sub-int v24, v2, v3

    .line 248
    .local v24, "hours":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 249
    mul-int v21, v23, v25

    .line 250
    .local v21, "dividerY":I
    add-int/lit8 v2, v25, 0x1

    mul-int v30, v23, v2

    .line 251
    .local v30, "nextDividerY":I
    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    const/4 v9, 0x0

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    int-to-float v11, v2

    move/from16 v0, v30

    int-to-float v12, v0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    add-int v22, v2, v25

    .line 259
    .local v22, "hour":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mManageTimeFormat:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeStringFormatted(II)Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "label":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v28

    .line 263
    .local v28, "labelWidth":F
    const/16 v16, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    int-to-float v2, v2

    sub-float v2, v2, v28

    move-object/from16 v0, p0

    iget v3, v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mLabelPaddingLeft:I

    int-to-float v3, v3

    sub-float v18, v2, v3

    add-int v2, v21, v27

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v14, p1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 271
    .end local v15    # "label":Ljava/lang/String;
    .end local v21    # "dividerY":I
    .end local v22    # "hour":I
    .end local v28    # "labelWidth":F
    .end local v30    # "nextDividerY":I
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    .end local v7    # "dividerPaint":Landroid/graphics/Paint;
    .end local v13    # "marginPaint":Landroid/graphics/Paint;
    .end local v20    # "labelPaint":Landroid/graphics/Paint;
    .end local v23    # "hourHeight":I
    .end local v24    # "hours":I
    .end local v25    # "i":I
    .end local v26    # "labelHeight":I
    .end local v27    # "labelOffset":I
    .end local v29    # "metrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v31    # "right":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventEndHour:I

    iget v4, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mEventStartHour:I

    sub-int v1, v3, v4

    .line 295
    .local v1, "hours":I
    iget v2, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHeaderWidth:I

    .line 296
    .local v2, "width":I
    iget v3, p0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->mHourHeight:I

    mul-int v0, v3, v1

    .line 298
    .local v0, "height":I
    invoke-static {v2, p1}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->resolveSize(II)I

    move-result v3

    invoke-static {v0, p2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 293
    .end local v0    # "height":I
    .end local v1    # "hours":I
    .end local v2    # "width":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
