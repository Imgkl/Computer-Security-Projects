.class Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;
.super Ljava/lang/Object;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private idx:I

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;)V
    .locals 3

    .prologue
    .line 1148
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k1:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1155
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1156
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1159
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1160
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1162
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1163
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1164
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1166
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1167
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1168
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v4:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1170
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$400(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1172
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$400(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$500(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto/16 :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1177
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1148
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1182
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1185
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    .line 1187
    .local v0, "old":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    .line 1189
    iget v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    packed-switch v1, :pswitch_data_0

    .line 1223
    :cond_1
    :goto_0
    return-object v0

    .line 1191
    :pswitch_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1192
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1193
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v2:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1199
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1200
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1201
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v3:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1207
    :cond_3
    :pswitch_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1208
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1209
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v4:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 1215
    :cond_4
    :pswitch_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$400(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1216
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->idx:I

    .line 1217
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$400(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->this$1:Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    # getter for: Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->access$500(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;->next:Ljava/util/Map$Entry;

    goto/16 :goto_0

    .line 1189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1227
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
