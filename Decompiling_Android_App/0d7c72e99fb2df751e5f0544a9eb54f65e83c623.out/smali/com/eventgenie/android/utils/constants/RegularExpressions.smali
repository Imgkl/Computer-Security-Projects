.class public Lcom/eventgenie/android/utils/constants/RegularExpressions;
.super Ljava/lang/Object;
.source "RegularExpressions.java"


# static fields
.field public static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

.field public static final REGEXP_EMAIL:Ljava/lang/String; = "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?"

.field public static final REGEXP_WEB:Ljava/lang/String; = "((https?):(//)+[\\w\\d:\\*#!@%/;$()~_?\\+-=\\.&]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/constants/RegularExpressions;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "((https?):(//)+[\\w\\d:\\*#!@%/;$()~_?\\+-=\\.&]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/constants/RegularExpressions;->HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
