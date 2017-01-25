.class public Lcom/genie_connect/common/utils/date/UtcDateFormatter;
.super Ljava/text/SimpleDateFormat;
.source "UtcDateFormatter.java"


# static fields
.field private static final TIME_ZONE_STRING:Ljava/lang/String; = "UTC"

.field private static final TIME_ZONE_UTC:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    invoke-super {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 49
    sget-object v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    invoke-super {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 54
    sget-object v0, Lcom/genie_connect/common/utils/date/UtcDateFormatter;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    invoke-super {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    return-void
.end method


# virtual methods
.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This SimpleDateFormat can only be in UTC"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
