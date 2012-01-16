.class public Lcom/google/common/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private jB:Lcom/google/common/base/Joiner;

.field private jC:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Joiner;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    .line 255
    iput-object p2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jC:Ljava/lang/String;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Joiner;Ljava/lang/String;Lcom/google/common/base/Joiner$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;
    .locals 3
    .parameter

    .prologue
    .line 313
    new-instance v0, Lcom/google/common/base/Joiner$MapJoiner;

    iget-object v1, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-virtual {v1, p1}, Lcom/google/common/base/Joiner;->E(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jC:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 270
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jC:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 271
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 272
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-static {v0}, Lcom/google/common/base/Joiner;->a(Lcom/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 276
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jC:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 277
    iget-object v2, p0, Lcom/google/common/base/Joiner$MapJoiner;->jB:Lcom/google/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->Q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 280
    :cond_0
    return-object p1
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Joiner$MapJoiner;->a(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-object p1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
