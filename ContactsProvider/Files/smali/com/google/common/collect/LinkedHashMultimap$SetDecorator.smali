.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;
.super Lcom/google/common/collect/ForwardingSet;
.source "LinkedHashMultimap.java"


# instance fields
.field final delegate:Ljava/util/Set;

.field final synthetic gW:Lcom/google/common/collect/LinkedHashMultimap;

.field final key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 172
    iput-object p3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    .line 173
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->t(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_0
    return v0
.end method

.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 213
    return-void
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter

    .prologue
    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->as(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-virtual {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->t(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->t(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 251
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 263
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 265
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->gW:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap;->me:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
