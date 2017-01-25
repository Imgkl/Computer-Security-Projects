.class Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
.super Ljava/lang/Object;
.source "TimeKeeper.java"


# instance fields
.field private isReady:Z

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCalendar(Ljava/util/Calendar;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .locals 2
    .param p0, "c"    # Ljava/util/Calendar;

    .prologue
    .line 108
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;-><init>()V

    .line 109
    .local v0, "date":Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mYear:I

    .line 110
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMonth:I

    .line 111
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mDay:I

    .line 112
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mHour:I

    .line 113
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMinute:I

    .line 114
    return-object v0
.end method

.method public static fromSelectedDate(Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .locals 2
    .param p0, "c"    # Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    .prologue
    .line 118
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;-><init>()V

    .line 119
    .local v0, "date":Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getYear()I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mYear:I

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMonth()I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMonth:I

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getDay()I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mDay:I

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getHour()I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mHour:I

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getMinute()I

    move-result v1

    iput v1, v0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMinute:I

    .line 124
    return-object v0
.end method

.method public static fromSqlite(Ljava/lang/String;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    .local v0, "tmp":Ljava/util/Calendar;
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 130
    invoke-static {p0}, Lcom/eventgenie/android/ui/help/UIUtils;->parseTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->fromCalendar(Ljava/util/Calendar;)Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 49
    .local v0, "c":Ljava/util/Calendar;
    iget v1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mYear:I

    iget v2, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMonth:I

    iget v3, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mDay:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 50
    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mDay:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMinute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mYear:I

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady:Z

    return v0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "mDay"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mDay:I

    .line 79
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "mHour"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mHour:I

    .line 83
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "mMinute"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMinute:I

    .line 87
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "mMonth"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mMonth:I

    .line 91
    return-void
.end method

.method public setReady(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->isReady:Z

    .line 95
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "mYear"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->mYear:I

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/TimeKeeper;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocaleObject()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDay(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
