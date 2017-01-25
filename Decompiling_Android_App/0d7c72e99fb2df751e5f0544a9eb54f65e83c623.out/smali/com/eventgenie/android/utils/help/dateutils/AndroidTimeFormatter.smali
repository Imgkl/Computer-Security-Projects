.class public Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;
.super Lcom/genie_connect/common/utils/date/TimeFormatter;
.source "AndroidTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;-><init>()V

    .line 94
    return-void
.end method

.method public static doFormatTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/TimeZone;I)Ljava/lang/String;
    .locals 5
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "sqliteString"    # Ljava/lang/String;
    .param p2, "conferenceTime"    # Ljava/util/TimeZone;
    .param p3, "timeManagementType"    # I

    .prologue
    .line 22
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, ""

    .line 45
    :goto_0
    return-object v3

    .line 32
    :cond_0
    :try_start_0
    sget-object v4, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 34
    .local v0, "d":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v0, p3, p2, v4}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .end local v0    # "d":Ljava/util/Date;
    .local v3, "rtn":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "locale":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->abbreviateLocaleString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    goto :goto_0

    .line 37
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "rtn":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 39
    const-string v3, ""

    .restart local v3    # "rtn":Ljava/lang/String;
    goto :goto_1
.end method

.method public static doFormatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;I)Ljava/lang/String;
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "conferenceTime"    # Ljava/util/TimeZone;
    .param p3, "timeManagementType"    # I

    .prologue
    .line 75
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTimeWithMediumFormat(Landroid/content/Context;Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "input"    # Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "timeManagementFormat"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter$1;->$SwitchMap$com$genie_connect$common$utils$date$TimeFormatter$INPUT:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 94
    const/4 v1, 0x0

    .line 97
    .local v1, "date":Ljava/util/Date;
    :goto_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 99
    .local v4, "hourFormat":Z
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    move v2, p3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getDateTimeWithSpecificFormat(Ljava/text/DateFormat;Ljava/util/Date;ILjava/util/TimeZone;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "hourFormat":Z
    :pswitch_0
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 89
    .restart local v1    # "date":Ljava/util/Date;
    goto :goto_1

    .line 91
    .end local v1    # "date":Ljava/util/Date;
    :pswitch_1
    invoke-static {p2}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 92
    .restart local v1    # "date":Ljava/util/Date;
    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromSqlDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "sqliteString"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDateTimeWithSpecificFormatHourOnly(Lorg/joda/time/DateTime;ILjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Lorg/joda/time/DateTime;
    .param p1, "timeManagementFormat"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "isDeviceOn24hFormat"    # Z

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 165
    if-eqz p3, :cond_1

    .line 166
    const-string v0, "HH:mm"

    .line 172
    .local v0, "dateFormatPattern":Ljava/lang/String;
    :goto_0
    move-object v1, p0

    .line 174
    .local v1, "dateTime":Lorg/joda/time/DateTime;
    if-eqz p2, :cond_0

    .line 175
    invoke-static {p2}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/DateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 178
    :cond_0
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a.m."

    const-string v4, "am"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p.m."

    const-string v4, "pm"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 157
    .end local v0    # "dateFormatPattern":Ljava/lang/String;
    .end local v1    # "dateTime":Lorg/joda/time/DateTime;
    :pswitch_0
    const-string v0, "hh a"

    .line 158
    .restart local v0    # "dateFormatPattern":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0    # "dateFormatPattern":Ljava/lang/String;
    :pswitch_1
    const-string v0, "HH:mm"

    .line 161
    .restart local v0    # "dateFormatPattern":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0    # "dateFormatPattern":Ljava/lang/String;
    :cond_1
    const-string v0, "hh a"

    .restart local v0    # "dateFormatPattern":Ljava/lang/String;
    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTimeFromJsonDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "jsonDate"    # Ljava/lang/String;
    .param p2, "timeManagementFormat"    # I

    .prologue
    .line 132
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 134
    .local v1, "hourFormat":Z
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 136
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 137
    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    .line 139
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getTimeFromSqliteDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "jsonDate"    # Ljava/lang/String;
    .param p2, "timeManagementFormat"    # I

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 114
    .local v1, "hourFormat":Z
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 116
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 117
    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
