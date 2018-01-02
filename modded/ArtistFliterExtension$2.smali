.class Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;
.super Ljava/lang/Object;
.source "ArtistFliterExtension.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2$1;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field final synthetic this$0:Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;


# direct methods
.method constructor <init>(Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;)V
    .registers 5
    .param p1, "this$0"    # Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;

    .prologue

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_6

    .line 5
    :catch_6

    .line 1
    iput-object p1, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->this$0:Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2$1;

    invoke-direct {v0, p0}, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2$1;-><init>(Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;)V

    iput-object v0, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 178
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->this$0:Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;

    invoke-static {v1}, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;->-get2(Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->gestureDetector:Landroid/view/GestureDetector;

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/huawei/camera2/function/artistfliter/ArtistFliterExtension$2;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    const/4 v0, 0x0

    return v0
.end method
