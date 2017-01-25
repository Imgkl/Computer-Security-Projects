.class public Lcom/genie_connect/common/utils/date/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;
    }
.end annotation


# static fields
.field protected static final DATA_TIME_ZONE:Ljava/util/TimeZone;

.field private static final HOUR_ONLY:Ljava/text/DateFormat;

.field public static final ISO8601_DATE:Ljava/text/DateFormat;

.field private static final JSON_FORMAT:Ljava/text/DateFormat;

.field private static final MIN_ONLY:Ljava/text/DateFormat;

.field private static final RSS_PUB_FORMAT:Ljava/text/DateFormat;

.field protected static final SQLITE_FORMAT:Ljava/text/DateFormat;

.field private static final SQLITE_TIME_FORMAT:Ljava/text/DateFormat;

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field private static final TIME_FORMAT:Ljava/text/DateFormat;

.field private static final YEARLESS_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static dayFormat:Ljava/text/DateFormat;

.field public static hourFormat12Hr:Ljava/text/DateFormat;

.field public static longDayFormat:Ljava/text/DateFormat;

.field private static monthFormat:Ljava/text/DateFormat;

.field public static sJavaDateFullFormat:Ljava/text/DateFormat;

.field public static sJavaDateLongFormat:Ljava/text/DateFormat;

.field public static sJavaDateMediumFormat:Ljava/text/DateFormat;

.field private static sJavaDateShortFormat:Ljava/text/DateFormat;

.field public static sJavaLongDateShortTime:Ljava/text/DateFormat;

.field private static sJavaMediumDateShortTime_LocalTz:Ljava/text/DateFormat;

.field private static sJavaMediumDateShortTime_UTC:Ljava/text/DateFormat;

.field public static shortDayFormat:Ljava/text/DateFormat;

.field public static shortDayFormat_3:Ljava/text/DateFormat;

.field public static shortDayNameFormat:Ljava/text/DateFormat;

.field public static timeFormat12Hr:Ljava/text/DateFormat;

.field protected static userDefinedTimeFormat:Ljava/text/DateFormat;

.field private static yearlessShortDate:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 46
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    .line 47
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "H"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->HOUR_ONLY:Ljava/text/DateFormat;

    .line 48
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->MIN_ONLY:Ljava/text/DateFormat;

    .line 49
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    .line 50
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->RSS_PUB_FORMAT:Ljava/text/DateFormat;

    .line 51
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    .line 52
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 53
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->TIME_FORMAT:Ljava/text/DateFormat;

    .line 55
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "MMMM"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->monthFormat:Ljava/text/DateFormat;

    .line 56
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateShortFormat:Ljava/text/DateFormat;

    .line 57
    invoke-static {v4, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaMediumDateShortTime_LocalTz:Ljava/text/DateFormat;

    .line 58
    invoke-static {v4, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaMediumDateShortTime_UTC:Ljava/text/DateFormat;

    .line 59
    invoke-static {v5, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaLongDateShortTime:Ljava/text/DateFormat;

    .line 61
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    .line 63
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEEE d MMMM"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->dayFormat:Ljava/text/DateFormat;

    .line 64
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->longDayFormat:Ljava/text/DateFormat;

    .line 65
    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateFullFormat:Ljava/text/DateFormat;

    .line 66
    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateLongFormat:Ljava/text/DateFormat;

    .line 67
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    .line 68
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEE d MMM"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat:Ljava/text/DateFormat;

    .line 69
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "d"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat_3:Ljava/text/DateFormat;

    .line 70
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayNameFormat:Ljava/text/DateFormat;

    .line 71
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    .line 72
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "hh a"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->hourFormat12Hr:Ljava/text/DateFormat;

    .line 76
    const-string v0, "\\W?[Yy]+\\W?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->YEARLESS_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->calculateYearlessShortDatePattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->yearlessShortDate:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    return-void
.end method

.method protected static abbreviateLocaleString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timeString"    # Ljava/lang/String;
    .param p1, "currentLocale"    # Ljava/lang/String;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string p0, ""

    .line 89
    .end local p0    # "timeString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 81
    .restart local p0    # "timeString":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    const-string v0, "pt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "Antes do meio-dia"

    const-string v1, "AM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 86
    const-string v0, "Depois do meio-dia"

    const-string v1, "PM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static calculateYearlessShortDatePattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x3

    .line 119
    const/4 v1, 0x3

    .line 122
    .local v1, "formatLength":I
    if-nez p0, :cond_0

    .line 123
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 128
    .local v0, "format":Ljava/text/SimpleDateFormat;
    :goto_0
    sget-object v4, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "originalPattern":Ljava/lang/String;
    sget-object v4, Lcom/genie_connect/common/utils/date/TimeFormatter;->YEARLESS_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 135
    .end local v2    # "originalPattern":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 125
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v4, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .restart local v0    # "format":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 135
    .restart local v2    # "originalPattern":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static convertFromJsonToSqlite(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :goto_0
    return-object v2

    .line 144
    :cond_0
    :try_start_0
    sget-object v3, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 145
    .local v0, "d":Ljava/util/Date;
    sget-object v3, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 146
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertToDate(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertToDate(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static convertToDate(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-object v1

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static doFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "conferenceTime"    # Ljava/util/TimeZone;

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inputFormat"    # Ljava/text/DateFormat;
    .param p1, "outputFormat"    # Ljava/text/DateFormat;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 189
    :goto_0
    return-object v2

    .line 185
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 186
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 187
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const-string v2, ""

    goto :goto_0
.end method

.method public static doFormat(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 206
    :goto_0
    return-object v2

    .line 202
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 203
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 204
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const-string v2, ""

    goto :goto_0
.end method

.method public static doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 219
    :goto_0
    return-object v2

    .line 215
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 216
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 217
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    const-string v2, ""

    goto :goto_0
.end method

.method public static doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fmt"    # Ljava/text/DateFormat;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 248
    :goto_0
    return-object v2

    .line 244
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 245
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 246
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 248
    const-string v2, ""

    goto :goto_0
.end method

.method public static doRSSLocalTimeFormat(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "dateTimeManagement"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isDeviceOn24hFormat"    # Z

    .prologue
    .line 255
    invoke-static {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 272
    :goto_0
    return-object v2

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 261
    const-string v2, ""

    goto :goto_0

    .line 264
    :cond_1
    const-string v2, " Z"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 265
    goto :goto_0

    .line 268
    :cond_2
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->RSS_PUB_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 269
    .local v0, "d":Ljava/util/Date;
    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDateTimeWithSpecificFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 270
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move-object v2, p1

    .line 272
    goto :goto_0
.end method

.method public static formatDay(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v2, "EEEE"

    invoke-direct {v1, v2}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEEE, MMMM d yyyy"

    invoke-direct {v0, v1, p1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEEE, MMMM d yyyy"

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatDayByRegionLocale(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "eventDate"    # Ljava/util/Date;
    .param p1, "eventLocation"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->localFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 437
    .local v1, "sessionLocale":Ljava/util/Locale;
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 440
    .local v0, "dateInstance":Ljava/text/DateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 442
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatDayFromSqlite(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->validateDateString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 114
    :goto_0
    return-object v2

    .line 110
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->SQLITE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 111
    .local v0, "d":Ljava/util/Date;
    invoke-static {v0, p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDay(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const-string v2, ""

    goto :goto_0
.end method

.method public static getDataTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getDateTimeWithSpecificFormat(Ljava/text/DateFormat;Ljava/util/Date;ILjava/util/TimeZone;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fullDate"    # Ljava/text/DateFormat;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "timeManagementFormat"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "isDeviceOn24hFormat"    # Z
    .param p5, "separator"    # Ljava/lang/String;

    .prologue
    .line 517
    if-nez p5, :cond_0

    .line 518
    const-string p5, " "

    .line 521
    :cond_0
    if-eqz p3, :cond_1

    .line 522
    invoke-virtual {p0, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 525
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2, p3, p4}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public static getDateTimeWithSpecificFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "timeManagementFormat"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "isDeviceOn24hFormat"    # Z

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    const-string v5, " - "

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDateTimeWithSpecificFormat(Ljava/text/DateFormat;Ljava/util/Date;ILjava/util/TimeZone;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHourFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->HOUR_ONLY:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->MIN_ONLY:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthName(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dateFormat"    # Ljava/text/DateFormat;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 319
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->monthFormat:Ljava/text/DateFormat;

    invoke-static {p0, v0, p1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNowAsJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortDayFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonDate"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayNameFormat:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortDayFromSqlite(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sqliteDate"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayNameFormat:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStartOfDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 337
    .local v0, "dCal":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 339
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 340
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 342
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 344
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeWithSpecifiedFormat(Ljava/util/Date;ILjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 4
    .param p0, "cal"    # Ljava/util/Date;
    .param p1, "timeManagementFormat"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "isDeviceOn24hFormat"    # Z

    .prologue
    .line 471
    packed-switch p1, :pswitch_data_0

    .line 481
    if-eqz p3, :cond_0

    .line 482
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->TIME_FORMAT:Ljava/text/DateFormat;

    .line 489
    .local v0, "shortTime":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a.m."

    const-string v3, "am"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p.m."

    const-string v3, "pm"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    .end local v0    # "shortTime":Ljava/text/DateFormat;
    :pswitch_0
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    .line 474
    .restart local v0    # "shortTime":Ljava/text/DateFormat;
    goto :goto_0

    .line 476
    .end local v0    # "shortTime":Ljava/text/DateFormat;
    :pswitch_1
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->TIME_FORMAT:Ljava/text/DateFormat;

    .line 477
    .restart local v0    # "shortTime":Ljava/text/DateFormat;
    goto :goto_0

    .line 484
    .end local v0    # "shortTime":Ljava/text/DateFormat;
    :cond_0
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    .restart local v0    # "shortTime":Ljava/text/DateFormat;
    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getYearlessShortDateFromSqlite(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sqliteDate"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->yearlessShortDate:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 362
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->resetTimeZones()V

    .line 363
    return-void
.end method

.method private static localFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    const-string v1, "_"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 457
    :goto_0
    return-object v1

    .line 454
    :cond_0
    array-length v1, v0

    if-eq v1, v5, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    aget-object v1, v0, v5

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resetFormatting(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 367
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateFullFormat:Ljava/text/DateFormat;

    .line 368
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateLongFormat:Ljava/text/DateFormat;

    .line 369
    invoke-static {v1, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    .line 370
    invoke-static {v2, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateShortFormat:Ljava/text/DateFormat;

    .line 371
    invoke-static {v1, v2, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaMediumDateShortTime_UTC:Ljava/text/DateFormat;

    .line 372
    invoke-static {v1, v2, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaMediumDateShortTime_LocalTz:Ljava/text/DateFormat;

    .line 374
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->timeFormat12Hr:Ljava/text/DateFormat;

    .line 375
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEEE d MMMM"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->dayFormat:Ljava/text/DateFormat;

    .line 376
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "MMMM"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->monthFormat:Ljava/text/DateFormat;

    .line 377
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEE d MMM"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat:Ljava/text/DateFormat;

    .line 378
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayNameFormat:Ljava/text/DateFormat;

    .line 379
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    invoke-static {p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->calculateYearlessShortDatePattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->yearlessShortDate:Ljava/text/DateFormat;

    .line 380
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "d"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->shortDayFormat_3:Ljava/text/DateFormat;

    .line 381
    new-instance v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;

    const-string v1, "EEEE d MMMM, yyyy - h:mm a"

    invoke-direct {v0, v1, p0}, Lcom/genie_connect/common/utils/date/UtcDateFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->longDayFormat:Ljava/text/DateFormat;

    .line 382
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->userDefinedTimeFormat:Ljava/text/DateFormat;

    .line 384
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->resetTimeZones()V

    .line 385
    return-void
.end method

.method private static resetTimeZones()V
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateFullFormat:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 390
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateLongFormat:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 391
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 392
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateShortFormat:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 393
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaMediumDateShortTime_UTC:Ljava/text/DateFormat;

    sget-object v1, Lcom/genie_connect/common/utils/date/TimeFormatter;->DATA_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 394
    return-void
.end method

.method public static toJsonString(J)Ljava/lang/String;
    .locals 2
    .param p0, "timeInMillis"    # J

    .prologue
    .line 408
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->toJsonString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJsonString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 397
    if-nez p0, :cond_0

    .line 403
    :goto_0
    return-object v1

    .line 400
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->JSON_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toNumericDayString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 412
    if-nez p0, :cond_0

    .line 418
    :goto_0
    return-object v1

    .line 415
    :cond_0
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/utils/date/TimeFormatter;->ISO8601_DATE:Ljava/text/DateFormat;

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static validateDateString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
