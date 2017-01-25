.class public final Lorg/apache/ignite/startup/cmdline/CommandLineStartup;
.super Ljava/lang/Object;
.source "CommandLineStartup.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final QUITE:Z

.field private static releaseDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 52
    const-class v12, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;

    invoke-virtual {v12}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v12

    if-nez v12, :cond_1

    :goto_0
    sput-boolean v10, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->$assertionsDisabled:Z

    .line 64
    const-string v10, "IGNITE_QUIET"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "quiteStr":Ljava/lang/String;
    const/4 v7, 0x1

    .line 68
    .local v7, "quite":Z
    if-eqz v8, :cond_0

    .line 69
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
    const-string v10, "false"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 73
    const/4 v7, 0x0

    .line 83
    :cond_0
    :goto_1
    sput-boolean v7, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->QUITE:Z

    .line 87
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "ddMMyyyy"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v11, Lorg/apache/ignite/internal/IgniteVersionUtils;->RELEASE_DATE_STR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    sput-object v10, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->releaseDate:Ljava/util/Date;

    .line 89
    const-string v10, "com.apple.eawt.Application"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    .local v2, "appCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getApplication"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 93
    .local v6, "osxApp":Ljava/lang/Object;
    const-string v5, "logo_ignite_128x128.png"

    .line 95
    .local v5, "icoPath":Ljava/lang/String;
    const-class v10, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 97
    .local v9, "url":Ljava/net/URL;
    sget-boolean v10, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->$assertionsDisabled:Z

    if-nez v10, :cond_3

    if-nez v9, :cond_3

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown icon path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "appCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "icoPath":Ljava/lang/String;
    .end local v6    # "osxApp":Ljava/lang/Object;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 126
    :goto_2
    return-void

    .end local v7    # "quite":Z
    .end local v8    # "quiteStr":Ljava/lang/String;
    :cond_1
    move v10, v11

    .line 52
    goto :goto_0

    .line 74
    .restart local v7    # "quite":Z
    .restart local v8    # "quiteStr":Ljava/lang/String;
    :cond_2
    const-string v10, "true"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 75
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid value for \'IGNITE_QUIET\' VM parameter (must be {true|false}): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const/4 v7, 0x0

    goto :goto_1

    .line 99
    .restart local v2    # "appCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "icoPath":Ljava/lang/String;
    .restart local v6    # "osxApp":Ljava/lang/Object;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    new-instance v4, Ljavax/swing/ImageIcon;

    invoke-direct {v4, v9}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    .line 101
    .local v4, "ico":Ljavax/swing/ImageIcon;
    const-string v10, "setDockIconImage"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/awt/Image;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v10, "com.apple.eawt.AboutHandler"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "aboutHndCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;

    const-string v11, "logo_ignite_48x48.png"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 108
    .local v3, "bannerUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    new-instance v12, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$1;

    invoke-direct {v12, v3}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$1;-><init>(Ljava/net/URL;)V

    invoke-static {v10, v11, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "aboutHndProxy":Ljava/lang/Object;
    const-string v10, "setAboutHandler"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic access$000()Ljava/util/Date;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->releaseDate:Ljava/util/Date;

    return-object v0
.end method

.method private static askConfigFile()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 204
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->getConfigFiles()Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;>;"
    const-string v6, "Available configuration files:"

    .line 208
    .local v6, "title":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->dash(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 212
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ":\t"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    const-string v7, "\nChoose configuration file (\'c\' to cancel) [0]: "

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/X;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "line":Ljava/lang/String;
    const-string v7, "c"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 221
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "\nOperation cancelled."

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v7, v8

    .line 239
    :goto_1
    return-object v7

    .line 226
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    const-string v4, "0"

    .line 230
    :cond_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .line 232
    .local v0, "file":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nUsing configuration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 236
    .end local v0    # "file":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;"
    :catch_0
    move-exception v3

    .line 237
    .local v3, "ignored":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nInvalid selection: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v8

    .line 239
    goto :goto_1
.end method

.method private static exit(Ljava/lang/String;ZI)V
    .locals 12
    .param p0, "errMsg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "showUsage"    # Z
    .param p2, "exitCode"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 143
    if-eqz p0, :cond_0

    .line 144
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    const-string v3, "IGNITE_PROG_NAME"

    const-string v4, "ignite.{sh|bat}"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "runner":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 150
    .local v2, "space":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2    # "space":I
    :cond_1
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 152
    if-eqz p1, :cond_2

    .line 153
    const-string v3, "ignite."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 155
    .local v0, "ignite":Z
    const-string v4, "Usage:"

    new-array v5, v11, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    const-string v3, " [?]|[path {-v}]|[-i]"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "    Where:"

    aput-object v3, v5, v8

    const-string v3, "    ?, /help, -help - show this message."

    aput-object v3, v5, v9

    const-string v3, "    -v              - verbose mode (quiet by default)."

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    if-eqz v0, :cond_2

    .line 163
    const-string v3, "    -i              - interactive mode (choose configuration file from list)."

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "    path            - path to Spring XML configuration file."

    aput-object v5, v4, v7

    const-string v5, "                      Path can be absolute or relative to IGNITE_HOME."

    aput-object v5, v4, v8

    const-string v5, " "

    aput-object v5, v4, v9

    const-string v5, "Spring file should contain one bean definition of Java type"

    aput-object v5, v4, v10

    const-string v5, "\'org.apache.ignite.configuration.IgniteConfiguration\'. Note that bean will be"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "fetched by the type and its ID is not used."

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .end local v0    # "ignite":Z
    :cond_2
    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    .line 175
    return-void

    .line 155
    .restart local v0    # "ignite":Z
    :cond_3
    const-string v3, " [?]|[-v]"

    goto :goto_0
.end method

.method private static isHelp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 187
    const-string v2, "--"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const-string v2, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_1
    return v1

    .line 189
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    move-object v0, p0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 249
    sget-boolean v7, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->QUITE:Z

    if-nez v7, :cond_0

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignite Command Line Startup, ver. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/IgniteVersionUtils;->ACK_VER_STR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const-string v7, "2015 Copyright(C) Apache Software Foundation"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/X;->println()V

    .line 255
    :cond_0
    array-length v7, p0

    if-le v7, v11, :cond_1

    .line 256
    const-string v7, "Too many arguments."

    invoke-static {v7, v11, v12}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    .line 258
    :cond_1
    array-length v7, p0

    if-lez v7, :cond_2

    aget-object v7, p0, v10

    invoke-static {v7}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->isHelp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 259
    invoke-static {v9, v11, v10}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    .line 261
    :cond_2
    array-length v7, p0

    if-lez v7, :cond_3

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    const-string v7, "Empty argument."

    invoke-static {v7, v11, v11}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    .line 264
    :cond_3
    array-length v7, p0

    if-lez v7, :cond_4

    aget-object v7, p0, v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_4

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid arguments: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11, v12}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    .line 267
    :cond_4
    const/4 v0, 0x0

    .line 269
    .local v0, "cfg":Ljava/lang/String;
    array-length v7, p0

    if-lez v7, :cond_6

    .line 270
    aget-object v0, p0, v10

    .line 287
    :cond_5
    :goto_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/G;->start(Ljava/lang/String;)Lorg/apache/ignite/Ignite;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 303
    .local v3, "gridName":Ljava/lang/String;
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 305
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;

    invoke-direct {v7, v3, v5}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$2;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/G;->addListener(Lorg/apache/ignite/IgnitionListener;)V

    .line 317
    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 323
    :goto_1
    const-string v7, "IGNITE_RESTART_CODE"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "code":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 327
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 334
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "gridName":Ljava/lang/String;
    .end local v5    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_2
    return-void

    .line 273
    :cond_6
    :try_start_3
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->askConfigFile()Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_5

    .line 276
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to run interactive mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10, v12}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    const-string v6, ""

    .line 294
    .local v6, "note":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Ljava/lang/ClassNotFoundException;

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 295
    const-string v6, "\nNote! You may use \'USER_LIBS\' environment variable to specify your classpath."

    .line 297
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to start grid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10, v12}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->exit(Ljava/lang/String;ZI)V

    goto :goto_2

    .line 319
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v6    # "note":Ljava/lang/String;
    .restart local v3    # "gridName":Ljava/lang/String;
    .restart local v5    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_2
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start was interrupted (exiting): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 329
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "code":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 330
    .local v4, "ignore":Ljava/lang/NumberFormatException;
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 333
    .end local v4    # "ignore":Ljava/lang/NumberFormatException;
    :cond_8
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method
