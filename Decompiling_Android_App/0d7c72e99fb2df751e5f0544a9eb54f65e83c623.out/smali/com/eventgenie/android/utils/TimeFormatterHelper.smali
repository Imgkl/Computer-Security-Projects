.class Lcom/eventgenie/android/utils/TimeFormatterHelper;
.super Ljava/lang/Object;
.source "TimeFormatterHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static abbreviateLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string p0, ""

    .line 18
    :cond_1
    :goto_0
    return-object p0

    .line 10
    :cond_2
    invoke-static {}, Lcom/eventgenie/android/utils/TimeFormatterHelper;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/eventgenie/android/utils/TimeFormatterHelper;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 13
    invoke-static {}, Lcom/eventgenie/android/utils/TimeFormatterHelper;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const-string v0, "Antes do meio-dia"

    const-string v1, "AM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string v0, "Depois do meio-dia"

    const-string v1, "PM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method static validateDateString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
