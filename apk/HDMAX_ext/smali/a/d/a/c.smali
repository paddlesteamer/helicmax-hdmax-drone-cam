.class public La/d/a/c;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:La/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/g<",
            "La/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/d/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/a/g<",
            "La/d/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:[La/d/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/d/a/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, La/d/a/g;-><init>(I)V

    iput-object v0, p0, La/d/a/c;->a:La/d/a/g;

    .line 3
    new-instance v0, La/d/a/g;

    invoke-direct {v0, v1}, La/d/a/g;-><init>(I)V

    iput-object v0, p0, La/d/a/c;->b:La/d/a/g;

    const/16 v0, 0x20

    new-array v0, v0, [La/d/a/h;

    .line 4
    iput-object v0, p0, La/d/a/c;->c:[La/d/a/h;

    return-void
.end method
