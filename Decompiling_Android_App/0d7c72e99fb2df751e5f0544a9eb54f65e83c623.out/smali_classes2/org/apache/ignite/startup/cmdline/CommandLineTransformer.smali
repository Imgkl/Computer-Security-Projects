.class public Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;
.super Ljava/lang/Object;
.source "CommandLineTransformer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ARGS_DELIMITER:Ljava/lang/String; = " "

.field static final JVM_OPTION_PREFIX:Ljava/lang/String; = "-J"

.field private static final TRANSFORMATION_FAILED_FLAG:Ljava/lang/String; = "CommandLineTransformerError"


# instance fields
.field private interactive:Z

.field private jvmOptions:Ljava/lang/String;

.field private noPause:Z

.field private springCfgPath:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->jvmOptions:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->springCfgPath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 179
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    return-void
.end method

.method private checkJVMOptionIsSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "jvmOpt"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "-XX:OnError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-XX:OnOutOfMemoryError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doTransformation([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 116
    .local v0, "arg":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :sswitch_0
    const-string v7, "-i"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "-v"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_1

    :sswitch_2
    const-string v7, "-np"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    .line 118
    :pswitch_0
    iput-boolean v6, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->interactive:Z

    goto :goto_2

    .line 123
    :pswitch_1
    iput-boolean v6, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->verbose:Z

    goto :goto_2

    .line 128
    :pswitch_2
    iput-boolean v6, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->noPause:Z

    goto :goto_2

    .line 137
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->reformatArguments(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x5dc -> :sswitch_0
        0x5e9 -> :sswitch_1
        0xb6af -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private formatBooleanValue(Z)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 84
    .local v0, "ps":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "ps":Ljava/io/PrintStream;
    .local v1, "ps":Ljava/io/PrintStream;
    :try_start_1
    invoke-static {p0}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->transform([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 94
    .end local v1    # "ps":Ljava/io/PrintStream;
    .restart local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const-string v3, "CommandLineTransformerError"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "ps":Ljava/io/PrintStream;
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "ps":Ljava/io/PrintStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "ps":Ljava/io/PrintStream;
    .restart local v0    # "ps":Ljava/io/PrintStream;
    goto :goto_1
.end method

.method private parseJvmOptionsAndSpringConfig(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "args":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "-J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    const-string v3, "-J"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "jvmOpt":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->checkJVMOptionIsSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "-J JVM parameters for Ignite batch scripts with double quotes are not supported. Use JVM_OPTS environment variable to pass any custom JVM option."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->jvmOptions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v2    # "jvmOpt":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->jvmOptions:Ljava/lang/String;

    goto :goto_0

    .restart local v2    # "jvmOpt":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->jvmOptions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 205
    .end local v2    # "jvmOpt":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->springCfgPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->springCfgPath:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognised parameter has been found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    .end local v0    # "arg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private reformatArguments(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "INTERACTIVE"

    iget-boolean v2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->interactive:Z

    invoke-direct {p0, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->formatBooleanValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v2, "QUIET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-DIGNITE_QUIET="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->verbose:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v1, "NO_PAUSE"

    iget-boolean v2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->noPause:Z

    invoke-direct {p0, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->formatBooleanValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->parseJvmOptionsAndSpringConfig(Ljava/lang/Iterable;)V

    .line 155
    const-string v1, "JVM_XOPTS"

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->jvmOptions:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v1, "CONFIG"

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->springCfgPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->addArgWithValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs transform([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 101
    sget-boolean v0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    new-instance v0, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;

    invoke-direct {v0}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;-><init>()V

    invoke-direct {v0, p0}, Lorg/apache/ignite/startup/cmdline/CommandLineTransformer;->doTransformation([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
