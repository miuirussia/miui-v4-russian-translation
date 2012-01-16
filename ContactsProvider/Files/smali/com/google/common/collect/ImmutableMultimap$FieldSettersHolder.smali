.class Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# static fields
.field static final oE:Lcom/google/common/collect/Serialization$FieldSetter;

.field static final oF:Lcom/google/common/collect/Serialization$FieldSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 238
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oE:Lcom/google/common/collect/Serialization$FieldSetter;

    .line 243
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/Serialization;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->oF:Lcom/google/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
