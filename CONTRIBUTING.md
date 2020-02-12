# How to contribute

The Puppet Enterprise Admin (PEADM) module https://github.com/puppetlabs/puppetlabs-peadm is set up as aproject focused on teh initial deployment of PE infrastructure in Standard (mono), Large (PE with HA and or compile masters), and XL (PE with HA and split PuppetDb and replication).

This Bolt Project is intended to augment tasks, plans for that module and also work as a feeder for additional tasks and plans

This project will track;

* Puppetfile, module and dependancies
* Tasks, either scripts or manifests in the `/site-modules` folder the initial module is a profile module but feel free to create further modules for additional context.
* Plans, plans in modules contained in the `/site-modules` folder the initial module is a profile module but feel free to create further modules for additional context.
* docs, the initial `README.md` and a `/docs` folder for additional documentation where needed


## Getting Started

* Make sure you have a [GitHub account](https://github.com/signup/free).
* Submit a Github Issue ticket for your issue if one does not already exist.
  * Clearly describe the issue including steps to reproduce when it is a bug.
  * Make sure you fill in the earliest version that you know has the issue.
  * A ticket is not necessary for [trivial changes](https://puppet.com/community/trivial-patch-exemption-policy)
* Fork the repository on GitHub.

## Making Changes

* Create a topic branch from where you want to base your work.
  * This is usually the master branch.
  * Only target release branches if you are certain your fix must be on that
    branch.
  * To quickly create a topic branch based on master, run `git checkout -b
    fix/master/my_contribution master`. Please avoid working directly on the
    `master` branch.
* Make commits of logical and atomic units.
* Check for unnecessary whitespace with `git diff --check` before committing.
* Make sure your commit messages are in the proper format. If the commit
  addresses an issue filed in the
  [Puppet Jira project](https://tickets.puppetlabs.com/browse/PUP), start
  the first line of the commit with the issue number in parentheses.

  ```
      (PUP-1234) Make the example in CONTRIBUTING imperative and concrete

      Without this patch applied the example commit message in the CONTRIBUTING
      document is not a concrete example. This is a problem because the
      contributor is left to imagine what the commit message should look like
      based on a description rather than an example. This patch fixes the
      problem by making the example concrete and imperative.

      The first line is a real-life imperative statement with a ticket number
      from our issue tracker. The body describes the behavior without the patch,
      why this is a problem, and how the patch fixes the problem when applied.
  ```
* Make sure you have added the necessary tests for your changes if applicable, or just a short description how to test.
* For details on how to run tests, please see [the quickstart guide](https://github.com/puppetlabs/puppet/blob/master/docs/quickstart.md)

## Making Trivial Changes

For [changes of a trivial nature](https://puppet.com/community/trivial-patch-exemption-policy), it is not always necessary to create a new
ticket in Jira. In this case, it is appropriate to start the first line of a
commit with one of  `(docs)`, `(maint)`, or `(packaging)` instead of a ticket
number.

If a Jira ticket exists for the documentation commit, you can include it
after the `(docs)` token.

```
    (docs)(DOCUMENT-000) Add docs commit example to CONTRIBUTING

    There is no example for contributing a documentation commit
    to the Puppet repository. This is a problem because the contributor
    is left to assume how a commit of this nature may appear.

    The first line is a real-life imperative statement with '(docs)' in
    place of what would have been the PUP project ticket number in a
    non-documentation related commit. The body describes the nature of
    the new documentation or comments added.
```

For commits that address trivial repository maintenance tasks or packaging
issues, start the first line of the commit with `(maint)` or `(packaging)`,
respectively.

## Submitting Changes

* Push your changes to a topic branch in your fork of the repository.
* Submit a pull request to the repository in the puppetlabs organization.
* Update your issue
  * Include a link to the pull request in the ticket.
  * Let us know your availability in the following week. 
* The core team looks at Pull Requests on a regular basis in a frequent triage
  meeting.
* After feedback has been given we expect responses within two weeks.

## Revert Policy

By running tests in advance and by engaging with peer review for prospective
changes, your contributions have a high probability of becoming long lived
parts of the the project. 

If the code change results in a test failure, we will make our best effort to
correct the error. If a fix cannot be determined and committed within 24 hours
of its discovery, the commit(s) responsible _may_ be reverted, at the
discretion of the committer and Puppet maintainers. This action would be taken
to help maintain passing states in our testing pipelines.

A reference to the test(s) and operating system(s)
that failed as a result of the code change will also be added to the Jira
ticket. This test(s) should be used to check future submissions of the code to
ensure the issue has been resolved.

### Summary

* Changes resulting in test pipeline failures will be reverted if they cannot
  be resolved within one business day.

## Additional Resources

* [Puppet community guidelines](https://puppet.com/community/community-guidelines)
* [Contributor License Agreement](http://links.puppet.com/cla)
* [General GitHub documentation](https://help.github.com/)
* [GitHub pull request documentation](https://help.github.com/articles/creating-a-pull-request/)
* [Community PR Triage notes](https://github.com/puppet-community/community-triage/tree/master/core/notes)
