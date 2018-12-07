import js.Promise;
import tink.core.Future;

@await
class Main {

  @async static function main() {
    var msg = @await Future.ofJsPromise(test());
    trace(msg);
  }

  static function test():Promise<String> {
    return new Promise(function(resolve: (String -> Void), reject: (Dynamic -> Void)): Void {
      resolve('Kawabanga');
    });
  }
}
