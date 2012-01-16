.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field private static final rg:Lcom/google/common/collect/MapMaker$ValueReference;


# instance fields
.field private expirationNanos:J

.field private keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field private re:Z

.field private final rf:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

.field private valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/google/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->rg:Lcom/google/common/collect/MapMaker$ValueReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->qb:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 100
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->qb:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expirationNanos:J

    .line 103
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->rf:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/MapMaker$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 3
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->qb:Lcom/google/common/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->re:Z

    .line 196
    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/MapMaker;)J
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->rf:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    return-object v0
.end method

.method private static fi()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/google/common/collect/MapMaker;->rg:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic fj()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/common/collect/MapMaker;->rg:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic fk()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/common/collect/MapMaker;->fi()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public fh()Lcom/google/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->pZ:Lcom/google/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMaker$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
