var gulp = require('gulp'),
    cleanCSS = require('gulp-clean-css'),
    concat = require('gulp-concat'),
    injectfile = require('gulp-inject-file');

gulp.task('css-concat-min', function(done) {
    console.log('Start CSS min phase');
    gulp.src('stylesheets/*.css')
        .pipe(concat('merged-min.css'))
        .pipe(cleanCSS({compatibility: 'ie8'}))
        .pipe(gulp.dest('./dist/'));
    done();
});

gulp.task('css-inject', function(done) {
    console.log('Start inject phase');
    gulp.src('amp/*.html')
        .pipe(injectfile({
            pattern: '<!--\\s*inject:\\s*<filename>-->'
        }))
        .pipe(gulp.dest('./'));
    done();
});

gulp.task('default', gulp.series('css-concat-min', 'css-inject'))
