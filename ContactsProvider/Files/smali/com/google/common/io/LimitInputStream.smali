.class public Lcom/google/common/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# instance fields
.field private ag:J

.field private kX:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->ag:J

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->a(ZLjava/lang/Object;)V

    .line 46
    iput-wide p2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public mark(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 55
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->ag:J

    .line 57
    return-void
.end method

.method public read()I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 60
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 65
    if-eq v1, v0, :cond_1

    .line 66
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 72
    iget-wide v1, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    int-to-long v1, p3

    iget-wide v3, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 77
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 78
    if-eq v1, v0, :cond_1

    .line 79
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->ag:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 93
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->ag:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    .line 94
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->kX:J

    .line 100
    return-wide v0
.end method
