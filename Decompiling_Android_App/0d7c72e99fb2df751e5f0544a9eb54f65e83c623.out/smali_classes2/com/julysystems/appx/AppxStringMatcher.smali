.class Lcom/julysystems/appx/AppxStringMatcher;
.super Ljava/lang/Object;
.source "AppxStringMatcher.java"


# static fields
.field static pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, ".*apppromo.*"

    sput-object v0, Lcom/julysystems/appx/AppxStringMatcher;->pattern:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMatch(Ljava/lang/String;)Z
    .locals 5
    .param p0, "matcherString"    # Ljava/lang/String;

    .prologue
    .line 17
    :try_start_0
    sget-object v3, Lcom/julysystems/appx/AppxStringMatcher;->pattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 18
    .local v2, "patt":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 19
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 23
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "patt":Ljava/util/regex/Pattern;
    :goto_0
    return v3

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "AppXView loadAppXFullPage regId"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v3, 0x0

    goto :goto_0
.end method
