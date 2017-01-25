.class public Lcom/urbanairship/js/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/js/Whitelist$UriPattern;
    }
.end annotation


# static fields
.field private static final HOST_REGEX:Ljava/lang/String; = "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

.field private static final PATH_REGEX:Ljava/lang/String; = "(/.*)"

.field private static final PATTERN_REGEX:Ljava/lang/String;

.field private static final REGEX_SPECIAL_CHARACTERS:Ljava/lang/String; = "\\.[]{}()^$?+|*"

.field private static final SCHEME_REGEX:Ljava/lang/String; = "((\\*)|(http)|(https))"

.field private static final VALID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private uriPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/js/Whitelist$UriPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 66
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "^((\\*)|((%s://%s%s)|(%s://%s)|(file://%s)))"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const-string v3, "(/.*)"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "(/.*)"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/js/Whitelist;->PATTERN_REGEX:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/urbanairship/js/Whitelist;->PATTERN_REGEX:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/js/Whitelist;->VALID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    .line 229
    return-void
.end method

.method public static createDefaultWhitelist(Lcom/urbanairship/AirshipConfigOptions;)Lcom/urbanairship/js/Whitelist;
    .locals 6
    .param p0, "airshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 215
    new-instance v4, Lcom/urbanairship/js/Whitelist;

    invoke-direct {v4}, Lcom/urbanairship/js/Whitelist;-><init>()V

    .line 216
    .local v4, "whitelist":Lcom/urbanairship/js/Whitelist;
    const-string v5, "https://*.urbanairship.com"

    invoke-virtual {v4, v5}, Lcom/urbanairship/js/Whitelist;->addEntry(Ljava/lang/String;)Z

    .line 217
    iget-object v5, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 218
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 219
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/urbanairship/js/Whitelist;->addEntry(Ljava/lang/String;)Z

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method private escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "escapeWildCards"    # Z

    .prologue
    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v3, "escapedInput":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-char v1, v0, v4

    .line 191
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "character":Ljava/lang/String;
    if-nez p2, :cond_1

    const-string v6, "*"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    const-string v6, "*"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v6, "\\.[]{}()^$?+|*"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    const-string v6, "\\"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 204
    .end local v1    # "c":C
    .end local v2    # "character":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 111
    if-eqz p1, :cond_0

    sget-object v9, Lcom/urbanairship/js/Whitelist;->VALID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_1

    .line 112
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid whitelist pattern "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 153
    :goto_0
    return v7

    .line 118
    :cond_1
    const-string v9, "*"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 119
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    const-string v10, "(http)|(https)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-direct {v9, p0, v10, v12, v12}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    const-string v10, "file"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "/.*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-direct {v9, p0, v10, v12, v11}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 125
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "*"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 131
    :cond_3
    const-string v9, "(http)|(https)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 137
    .local v5, "schemePattern":Ljava/util/regex/Pattern;
    :goto_1
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 138
    :cond_4
    const/4 v1, 0x0

    .line 146
    .local v1, "hostPattern":Ljava/util/regex/Pattern;
    :goto_2
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 147
    const/4 v3, 0x0

    .line 152
    .local v3, "pathPattern":Ljava/util/regex/Pattern;
    :goto_3
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    invoke-direct {v9, p0, v5, v1, v3}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v1    # "hostPattern":Ljava/util/regex/Pattern;
    .end local v3    # "pathPattern":Ljava/util/regex/Pattern;
    .end local v5    # "schemePattern":Ljava/util/regex/Pattern;
    :cond_5
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .restart local v5    # "schemePattern":Ljava/util/regex/Pattern;
    goto :goto_1

    .line 139
    :cond_6
    const-string v9, "*."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(.*\\.)?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v7}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .restart local v1    # "hostPattern":Ljava/util/regex/Pattern;
    goto :goto_2

    .line 142
    .end local v1    # "hostPattern":Ljava/util/regex/Pattern;
    :cond_7
    invoke-direct {p0, v0, v7}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .restart local v1    # "hostPattern":Ljava/util/regex/Pattern;
    goto :goto_2

    .line 149
    :cond_8
    invoke-direct {p0, v2, v8}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .restart local v3    # "pathPattern":Ljava/util/regex/Pattern;
    goto :goto_3
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 170
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/js/Whitelist$UriPattern;

    .line 171
    .local v1, "pattern":Lcom/urbanairship/js/Whitelist$UriPattern;
    invoke-virtual {v1, v2}, Lcom/urbanairship/js/Whitelist$UriPattern;->matches(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    const/4 v3, 0x1

    goto :goto_0
.end method
