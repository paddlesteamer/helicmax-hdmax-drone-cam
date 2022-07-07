.class public La/c/b;
.super La/c/g;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/g<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:La/c/c;


# direct methods
.method public constructor <init>(La/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/c/b;->d:La/c/c;

    invoke-direct {p0}, La/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, La/c/b;->d:La/c/c;

    invoke-virtual {v0, p1}, La/c/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, La/c/b;->d:La/c/c;

    iget-object p2, p2, La/c/c;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, La/c/b;->d:La/c/c;

    invoke-virtual {v0}, La/c/c;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, La/c/b;->d:La/c/c;

    invoke-virtual {v0, p1}, La/c/c;->b(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 3
    iget-object p2, p0, La/c/b;->d:La/c/c;

    invoke-virtual {p2, p1}, La/c/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, La/c/b;->d:La/c/c;

    invoke-virtual {v0, p1}, La/c/c;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, La/c/b;->d:La/c/c;

    iget v0, v0, La/c/c;->d:I

    return v0
.end method
