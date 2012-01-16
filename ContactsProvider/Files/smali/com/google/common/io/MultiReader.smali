.class Lcom/google/common/io/MultiReader;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private final it:Ljava/util/Iterator;

.field private vF:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    .line 38
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 39
    return-void
.end method

.method private advance()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/io/MultiReader;->close()V

    .line 46
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->ae()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iput-object v1, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    .line 89
    :cond_0
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 52
    iget-object v1, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 56
    if-ne v1, v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiReader;->read([CII)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "n is negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/Object;)V

    .line 65
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->vF:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 68
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 74
    :goto_2
    return-wide v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 74
    goto :goto_2
.end method
