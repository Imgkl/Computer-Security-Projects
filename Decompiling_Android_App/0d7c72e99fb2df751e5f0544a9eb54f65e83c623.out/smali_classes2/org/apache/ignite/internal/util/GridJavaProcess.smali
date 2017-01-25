.class public final Lorg/apache/ignite/internal/util/GridJavaProcess;
.super Ljava/lang/Object;
.source "GridJavaProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PID_MSG_PREFIX:Ljava/lang/String; = "my_pid_is:"


# instance fields
.field private esGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private osGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

.field private volatile pid:Ljava/lang/String;

.field private proc:Ljava/lang/Process;

.field private procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/util/GridJavaProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridJavaProcess;->$assertionsDisabled:Z

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

    .line 54
    const-string v0, "-1"

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lorg/apache/ignite/internal/util/GridJavaProcess;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridJavaProcess;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridJavaProcess;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/GridJavaProcess;)Ljava/lang/Process;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridJavaProcess;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/GridJavaProcess;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridJavaProcess;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    return-object v0
.end method

.method public static exec(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;)Lorg/apache/ignite/internal/util/GridJavaProcess;
    .locals 7
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "procKilledC"    # Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            ")",
            "Lorg/apache/ignite/internal/util/GridJavaProcess;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "printC":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/GridJavaProcess;->exec(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridJavaProcess;

    move-result-object v0

    return-object v0
.end method

.method public static exec(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridJavaProcess;
    .locals 11
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteInClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "procKilledC"    # Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "cp"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/util/GridJavaProcess;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "printC":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/String;>;"
    .local p5, "jvmArgs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isLinux()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v9

    if-nez v9, :cond_0

    .line 105
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "Your OS is not supported."

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 107
    :cond_0
    new-instance v4, Lorg/apache/ignite/internal/util/GridJavaProcess;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/GridJavaProcess;-><init>()V

    .line 109
    .local v4, "gjProc":Lorg/apache/ignite/internal/util/GridJavaProcess;
    iput-object p2, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;

    .line 110
    iput-object p4, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "java.home"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "java"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "javaBin":Ljava/lang/String;
    const-string v9, "java.class.path"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "classpath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "clsName":Ljava/lang/String;
    if-eqz p6, :cond_1

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "path.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 122
    .local v8, "procParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "procCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    if-nez p5, :cond_3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jvmArgs()Ljava/util/List;

    move-result-object p5

    .end local p5    # "jvmArgs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p5

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    const-string v9, "-cp"

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v7}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 133
    .local v1, "builder":Ljava/lang/ProcessBuilder;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 137
    .local v6, "proc":Ljava/lang/Process;
    new-instance v9, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v4, v10, p3}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;-><init>(Lorg/apache/ignite/internal/util/GridJavaProcess;Ljava/io/InputStream;Lorg/apache/ignite/lang/IgniteInClosure;)V

    iput-object v9, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->osGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    .line 138
    new-instance v9, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v4, v10, p3}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;-><init>(Lorg/apache/ignite/internal/util/GridJavaProcess;Ljava/io/InputStream;Lorg/apache/ignite/lang/IgniteInClosure;)V

    iput-object v9, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->esGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    .line 140
    iget-object v9, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->osGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->start()V

    .line 141
    iget-object v9, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->esGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;->start()V

    .line 143
    iput-object v6, v4, Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;

    .line 145
    return-object v4

    .line 119
    .end local v1    # "builder":Ljava/lang/ProcessBuilder;
    .end local v6    # "proc":Ljava/lang/Process;
    .end local v7    # "procCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "procParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p5    # "jvmArgs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProcess()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->proc:Ljava/lang/Process;

    return-object v0
.end method

.method public kill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "taskkill"

    aput-object v3, v2, v4

    const-string v3, "/pid"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "/f"

    aput-object v3, v2, v7

    const/4 v3, 0x4

    const-string v4, "/t"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 158
    .local v0, "killProc":Ljava/lang/Process;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 160
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridJavaProcess;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Process killing was not successful"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 154
    .end local v0    # "killProc":Ljava/lang/Process;
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "kill"

    aput-object v3, v2, v4

    const-string v3, "-9"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->pid:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0

    .line 162
    .restart local v0    # "killProc":Ljava/lang/Process;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->procKilledC:Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;->apply()V

    .line 165
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->osGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 166
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->esGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 168
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->osGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 169
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->esGrabber:Lorg/apache/ignite/internal/util/GridJavaProcess$ProcessStreamGrabber;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridJavaProcess;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 170
    return-void
.end method
