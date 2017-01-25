.class public Lorg/apache/ignite/internal/util/test/GridTestPrintStream;
.super Ljava/io/PrintStream;
.source "GridTestPrintStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final baseGrp:Ljava/lang/ThreadGroup;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ThreadGroup;",
            "Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->baseGrp:Ljava/lang/ThreadGroup;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;Ljava/lang/ThreadGroup;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "baseGrp"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    .line 57
    sget-boolean v0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->baseGrp:Ljava/lang/ThreadGroup;

    .line 60
    return-void
.end method

.method private out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    .locals 5
    .param p1, "release"    # Z

    .prologue
    .line 71
    iget-object v3, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    monitor-enter v3

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 74
    .local v0, "grp":Ljava/lang/ThreadGroup;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->baseGrp:Ljava/lang/ThreadGroup;

    if-eq v2, v4, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-object v1, v2

    .line 79
    .local v1, "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    :goto_1
    if-nez v1, :cond_3

    .line 80
    if-eqz p1, :cond_2

    .line 81
    new-instance v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;-><init>()V

    monitor-exit v3

    .line 86
    :goto_2
    return-object v2

    .line 77
    .end local v1    # "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-object v1, v2

    goto :goto_1

    .line 83
    .restart local v1    # "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->streams:Ljava/util/Map;

    new-instance v1, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    .end local v1    # "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;-><init>()V

    .restart local v1    # "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3
    monitor-exit v3

    move-object v2, v1

    goto :goto_2

    .line 87
    .end local v0    # "grp":Ljava/lang/ThreadGroup;
    .end local v1    # "out":Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(C)Ljava/io/PrintStream;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->close()V

    .line 212
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->flush()V

    .line 217
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public print(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(C)V

    .line 117
    return-void
.end method

.method public print(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(D)V

    .line 127
    return-void
.end method

.method public print(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(F)V

    .line 137
    return-void
.end method

.method public print(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(I)V

    .line 147
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(J)V

    .line 157
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print(Z)V

    .line 167
    return-void
.end method

.method public print([C)V
    .locals 1
    .param p1, "s"    # [C

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->print([C)V

    .line 177
    return-void
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public println()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println()V

    .line 112
    return-void
.end method

.method public println(C)V
    .locals 1
    .param p1, "x"    # C

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(C)V

    .line 122
    return-void
.end method

.method public println(D)V
    .locals 1
    .param p1, "x"    # D

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(D)V

    .line 132
    return-void
.end method

.method public println(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(F)V

    .line 142
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(I)V

    .line 152
    return-void
.end method

.method public println(J)V
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(J)V

    .line 162
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public println(Z)V
    .locals 1
    .param p1, "x"    # Z

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println(Z)V

    .line 172
    return-void
.end method

.method public println([C)V
    .locals 1
    .param p1, "x"    # [C

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->println([C)V

    .line 182
    return-void
.end method

.method public purge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->writeTo(Ljava/io/OutputStream;)V

    .line 97
    return-void
.end method

.method public purge(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->writeTo(Ljava/io/OutputStream;)V

    .line 107
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->write(I)V

    .line 222
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->write([B)V

    .line 227
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream;->out(Z)Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/test/GridTestPrintStream$BytePrintStream;->write([BII)V

    .line 207
    return-void
.end method
