.class public Lcom/urbanairship/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final ALT_ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/urbanairship/util/DateUtils;->ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/urbanairship/util/DateUtils;->ALT_ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 41
    sget-object v0, Lcom/urbanairship/util/DateUtils;->ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 42
    sget-object v0, Lcom/urbanairship/util/DateUtils;->ALT_ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIso8601TimeStamp(J)Ljava/lang/String;
    .locals 2
    .param p0, "milliseconds"    # J

    .prologue
    .line 90
    sget-object v0, Lcom/urbanairship/util/DateUtils;->ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseIso8601(Ljava/lang/String;)J
    .locals 4
    .param p0, "timeStamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Unable to parse null timestamp"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 61
    :cond_0
    :try_start_0
    sget-object v1, Lcom/urbanairship/util/DateUtils;->ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 63
    :goto_0
    return-wide v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ignored":Ljava/text/ParseException;
    sget-object v1, Lcom/urbanairship/util/DateUtils;->ALT_ISO_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static parseIso8601(Ljava/lang/String;J)J
    .locals 1
    .param p0, "timeStamp"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 79
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 78
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ignored":Ljava/text/ParseException;
    goto :goto_0
.end method
