.class Lcom/google/common/base/Joiner$2;
.super Lcom/google/common/base/Joiner;
.source "Joiner.java"


# instance fields
.field final synthetic ne:Lcom/google/common/base/Joiner;


# virtual methods
.method public E(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .locals 2
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;
    .locals 2
    .parameter

    .prologue
    .line 230
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 206
    const-string v0, "appendable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "parts"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/google/common/base/Joiner$2;->ne:Lcom/google/common/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 216
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_1

    .line 219
    iget-object v2, p0, Lcom/google/common/base/Joiner$2;->ne:Lcom/google/common/base/Joiner;

    invoke-static {v2}, Lcom/google/common/base/Joiner;->a(Lcom/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 220
    iget-object v2, p0, Lcom/google/common/base/Joiner$2;->ne:Lcom/google/common/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 223
    :cond_2
    return-object p1
.end method
